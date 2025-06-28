import 'dart:async';

import 'package:flutter/material.dart';

import 'package:rxdart/rxdart.dart';
import 'package:synchronized/synchronized.dart';
import 'package:yx_scope/yx_scope.dart';

class RepositoryService<T> implements AsyncLifecycle {
  final ValueGetter<Future<T>> _onFetch;
  final Duration _refreshInterval;
  final _lock = Lock();

  RepositoryService({
    required ValueGetter<Future<T>> onFetch,
    Duration refreshInterval = const Duration(seconds: 1),
  }) : _onFetch = onFetch,
       _refreshInterval = refreshInterval;

  final _subject = BehaviorSubject<T?>.seeded(null);

  Timer? _timer;

  ValueStream<T?> get value => _subject;

  @override
  Future<void> dispose() async {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> init() async {
    _timer = Timer.periodic(_refreshInterval, (_) async => _fetch());
  }

  Future<void> _fetch() async {
    // Пропускаем запросы, если они уже выполняются
    if (_lock.inLock) return;

    await _lock.synchronized(() async => _subject.add(await _onFetch()));
  }
}
