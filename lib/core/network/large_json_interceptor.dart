import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:worker_manager/worker_manager.dart';

// Task class for JSON parsing
class JsonParseTask {
  static Future<Map<String, dynamic>> parse(String jsonString) async =>
      json.decode(jsonString) as Map<String, dynamic>;
}

class LargeJsonInterceptor extends Interceptor {
  static const int _largeJsonThreshold = 4 * 1024; // 4KB threshold

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (_shouldParseInIsolate(response)) {
      try {
        final jsonString = _getResponseString(response);
        if (jsonString != null) {
          // Use WorkerManager to parse JSON in a separate isolate
          final parsedJson = await workerManager.execute<Map<String, dynamic>>(
            () => JsonParseTask.parse(jsonString),
          );
          response.data = parsedJson;
        }
      } catch (e) {
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            error: 'Failed to parse large JSON response: $e',
          ),
        );
        return;
      }
    }

    handler.next(response);
  }

  bool _shouldParseInIsolate(Response response) {
    if (response.data is! String) return false;

    final contentType = response.headers.value('content-type');
    if (contentType == null || !contentType.contains('application/json')) {
      return false;
    }

    return response.data.toString().length > _largeJsonThreshold;
  }

  String? _getResponseString(Response response) {
    if (response.data is String) {
      return response.data as String;
    }
    return null;
  }
}
