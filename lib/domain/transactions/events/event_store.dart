import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:yx_scope/yx_scope.dart';

import 'transaction_event.dart';

/// Factory for creating [TransactionEventStore] instances
class TransactionEventStoreFactory implements AsyncLifecycle {
  TransactionEventStore? _store;

  @override
  Future<void> init() async {
    _store = await TransactionEventStore.create();
  }

  @override
  Future<void> dispose() async {
    _store = null;
  }

  TransactionEventStore get store {
    if (_store == null) {
      throw StateError('TransactionEventStore not initialized');
    }
    return _store!;
  }
}

/// A store for persisting transaction events using SharedPreferences
class TransactionEventStore {
  static const String _eventsKey = 'transaction_events';
  static const String _versionKey = 'transaction_events_version';
  static const int _currentVersion = 1;

  final SharedPreferences _prefs;

  TransactionEventStore._(this._prefs);

  /// Creates a new instance of [TransactionEventStore]
  static Future<TransactionEventStore> create() async {
    final prefs = await SharedPreferences.getInstance();
    final store = TransactionEventStore._(prefs);
    await store._initializeIfNeeded();
    return store;
  }

  /// Initializes the store if it hasn't been initialized yet
  Future<void> _initializeIfNeeded() async {
    final version = _prefs.getInt(_versionKey);
    if (version == null) {
      await _prefs.setInt(_versionKey, _currentVersion);
    }
    // Add migration logic here when version changes
  }

  /// Saves a single event to the store
  Future<void> saveEvent(TransactionEvent event) async {
    try {
      final events = await getEvents();
      events.add(event);
      await _saveEvents(events);
    } catch (e) {
      throw EventStoreException('Failed to save event: $e');
    }
  }

  /// Saves multiple events in a single batch operation
  Future<void> saveEvents(List<TransactionEvent> newEvents) async {
    try {
      final events = await getEvents();
      events.addAll(newEvents);
      await _saveEvents(events);
    } catch (e) {
      throw EventStoreException('Failed to save events batch: $e');
    }
  }

  /// Internal method to save events to SharedPreferences
  Future<void> _saveEvents(List<TransactionEvent> events) async {
    final jsonEvents = events.map((e) => _eventToJson(e)).toList();
    await _prefs.setStringList(_eventsKey, jsonEvents);
  }

  /// Retrieves all events from the store
  Future<List<TransactionEvent>> getEvents() async {
    try {
      final jsonEvents = _prefs.getStringList(_eventsKey) ?? [];
      return jsonEvents.map((e) => _eventFromJson(e)).toList();
    } catch (e) {
      throw EventStoreException('Failed to retrieve events: $e');
    }
  }

  /// Retrieves events for a specific transaction
  Future<List<TransactionEvent>> getEventsForTransaction(
      int transactionId) async {
    try {
      final events = await getEvents();
      return events
          .where((event) => event.map(
                created: (e) => false, // Created events don't have an ID yet
                updated: (e) => e.id == transactionId,
                deleted: (e) => e.id == transactionId,
              ))
          .toList();
    } catch (e) {
      throw EventStoreException(
          'Failed to retrieve events for transaction $transactionId: $e');
    }
  }

  /// Retrieves events within a date range
  Future<List<TransactionEvent>> getEventsByDateRange(
      DateTime start, DateTime end) async {
    try {
      final events = await getEvents();
      return events
          .where((event) => event.map(
                created: (e) =>
                    e.transactionDate.isAfter(start) &&
                    e.transactionDate.isBefore(end),
                updated: (e) =>
                    e.transactionDate?.isAfter(start) == true &&
                    e.transactionDate?.isBefore(end) == true,
                deleted: (_) => false, // Deleted events don't have a date
              ))
          .toList();
    } catch (e) {
      throw EventStoreException('Failed to retrieve events by date range: $e');
    }
  }

  /// Clears all events from the store
  Future<void> clearEvents() async {
    try {
      await _prefs.remove(_eventsKey);
    } catch (e) {
      throw EventStoreException('Failed to clear events: $e');
    }
  }

  /// Converts a TransactionEvent to JSON string
  String _eventToJson(TransactionEvent event) {
    try {
      return jsonEncode(event.toJson());
    } catch (e) {
      throw EventStoreException('Failed to serialize event: $e');
    }
  }

  /// Creates a TransactionEvent from JSON string
  TransactionEvent _eventFromJson(String json) {
    try {
      final map = jsonDecode(json) as Map<String, dynamic>;
      return TransactionEvent.fromJson(map);
    } catch (e) {
      throw EventStoreException('Failed to deserialize event: $e');
    }
  }
}

/// Exception thrown when operations on [TransactionEventStore] fail
class EventStoreException implements Exception {
  final String message;
  EventStoreException(this.message);

  @override
  String toString() => 'EventStoreException: $message';
}
