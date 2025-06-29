class HistoryPageFilterState {
  final DateTime startDate;
  final DateTime endDate;

  HistoryPageFilterState({required this.startDate, required this.endDate});

  HistoryPageFilterState copyWith({DateTime? startDate, DateTime? endDate}) =>
      HistoryPageFilterState(
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
      );
}
