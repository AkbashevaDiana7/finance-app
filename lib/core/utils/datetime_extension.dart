import 'package:intl/intl.dart';

import 'string_extension.dart';

extension DateTimeExtension on DateTime {
  bool get epsilonSomeDay =>
      sameDay || (subtract(Duration(seconds: 30))).sameDay;

  bool get sameDay {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  DateTime get startOfDay =>
      copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);

  DateTime get endOfDay => copyWith(
    hour: 23,
    minute: 59,
    second: 59,
    millisecond: 999,
    microsecond: 999,
  );

  String get formatted {
    final dateFormatter = DateFormat('MMMM yyyy');
    final timeFormatter = DateFormat('HH:mm');

    return (sameDay ? timeFormatter.format(this) : dateFormatter.format(this))
        .capitalize();
  }

  String get formattedMonthAndYear {
    final dateFormatter = DateFormat('MMMM yyyy');
    return dateFormatter.format(this);
  }

  String get formattedDate {
    final dateFormatter = DateFormat('dd.MM.yyyy');
    return dateFormatter.format(this);
  }

  String get formattedTime {
    final timeFormatter = DateFormat('HH:mm');
    return timeFormatter.format(this);
  }

  bool isBetween(DateTime start, DateTime end) =>
      isAfter(start) && isBefore(end);

  bool isBetweenDays(DateTime start, DateTime end) =>
      isAfter(start.startOfDay) && isBefore(end.endOfDay);
}
