import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../../../core/utils/datetime_extension.dart';
import 'state.dart';

class HistoryPageFilterManager implements AsyncLifecycle {
  static HistoryPageFilterState get defaultFilterState =>
      HistoryPageFilterState(
        startDate: DateTime.now().subtract(const Duration(days: 30)),
        endDate: DateTime.now(),
      );

  final BehaviorSubject<HistoryPageFilterState> _filterStateSubject =
      BehaviorSubject.seeded(defaultFilterState);

  Timer? _timer;

  ValueStream<HistoryPageFilterState> get filterState => _filterStateSubject;

  set startDate(DateTime startDate) => _filterStateSubject.add(
    _filterStateSubject.value.copyWith(startDate: startDate),
  );

  set endDate(DateTime endDate) => _filterStateSubject.add(
    _filterStateSubject.value.copyWith(endDate: endDate),
  );

  @override
  Future<void> dispose() async {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> init() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _syncFilterState();
    });
  }

  /// Поддерживает время в актуальном состоянии
  void _syncFilterState() {
    if (_filterStateSubject.value.endDate.epsilonSomeDay) {
      _filterStateSubject.add(
        _filterStateSubject.value.copyWith(endDate: DateTime.now()),
      );
    }
  }
}
