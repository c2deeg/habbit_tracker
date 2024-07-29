import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appText.dart';
import 'date_helper.dart';

extension DateTimeExt on DateTime {
  DateTime get monthStart => DateTime(year, month);

  DateTime get dayStart => DateTime(year, month, day);

  DateTime addMonth(int count) {
    return DateTime(year, month + count, day);
  }

  bool isSameDate(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  bool get isToday {
    return isSameDate(DateTime.now());
  }
}

class CalendarWidget extends StatelessWidget {
  CalendarWidget(
      {super.key,
      required this.selectedDate,
      required this.selectedMonth,
      this.function,
      this.selectDate});
  Rx<DateTime> selectedMonth;
  Rx<DateTime> selectedDate;
  VoidCallback? function;
  ValueChanged<DateTime>? selectDate;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Body(
                      selectedDate: selectedDate.value,
                      selectedMonth: selectedMonth.value,
                      selectDate: selectDate ??
                          (DateTime value) {
                            bool isPassed = value.isBefore(DateTime.now());
                            if (value.month == selectedMonth.value.month &&
                                    !isPassed ||
                                value.isToday) {
                              selectedDate.value = value;
                            }
                          }),
                ),
                const VerticalDivider(
                  color: Colors.white,
                  endIndent: 25,indent: 35,
                  width: 2,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Header(
                      selectedMonth: selectedMonth.value,
                      selectedDate: selectedDate.value,
                      onChange: (value) => selectedMonth.value = value,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.selectedMonth,
    required this.selectedDate,
    required this.selectDate,
  });

  final DateTime selectedMonth;
  final DateTime? selectedDate;

  final ValueChanged<DateTime> selectDate;

  @override
  Widget build(BuildContext context) {
    var data = CalendarMonthData(
      year: selectedMonth.year,
      month: selectedMonth.month,
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      /*  decoration: BoxDecoration(
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(16)
      ),*/
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'S',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  'M',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  'T',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  'W',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  'T',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  'F',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  'S',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var week in data.weeks)
                  Row(
                    children: week.map((d) {
                      return Expanded(
                        child: RowItem(
                          hasRightBorder: false,
                          date: d.date,
                          isActiveMonth: d.isActiveMonth,
                          onTap: () => selectDate(d.date),
                          isSelected: selectedDate != null &&
                              selectedDate!.isSameDate(d.date),
                        ),
                      );
                    }).toList(),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem({
    super.key,
    required this.hasRightBorder,
    required this.isActiveMonth,
    required this.isSelected,
    required this.date,
    required this.onTap,
  });

  final bool hasRightBorder;
  final bool isActiveMonth;
  final VoidCallback onTap;
  final bool isSelected;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final int number = date.day;
    final isToday = date.isToday;
    final bool isPassed = date.isBefore(DateTime.now());

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child:Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 25,
            width: double.infinity,
            padding: EdgeInsets.zero,
            margin: const EdgeInsets.all(5),
            decoration: isSelected
                ? BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(15))
                : isToday
                ? BoxDecoration(
                color: Colors.white.withOpacity(0.30),
                borderRadius: BorderRadius.circular(15))
                : null,
            child: RotatedBox(
              quarterTurns: 3,
              child: ClipRRect(
                borderRadius:  BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: isSelected?1.0:number%2==1?0.5:0.2,
                  minHeight: 15,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.yellow),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(number.toString(),
                style: TextStyle(
                    fontSize: 14,
                    color: isToday
                        ? dateColor(isToday, isSelected)
                        : isSelected
                        ? dateColor(isToday, isSelected)
                        : isPassed
                        ? isActiveMonth
                        ? Colors.white.withOpacity(0.4)
                        : Colors.transparent
                        : isActiveMonth
                        ? Colors.white
                        : Colors.grey.withOpacity(0.9))),
          ),
        ],
      ),
        /*Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.center,
        height: 25,
        decoration: isSelected
            ? BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(15))
            : isToday
                ? BoxDecoration(
                    color: Colors.white.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(15))
                : null,
        child: Text(number.toString(),
            style: TextStyle(
                fontSize: 14,
                color: isToday
                    ? dateColor(isToday, isSelected)
                    : isSelected
                        ? dateColor(isToday, isSelected)
                        : isPassed
                            ? isActiveMonth
                                ? Colors.white.withOpacity(0.4)
                                : Colors.transparent
                            : isActiveMonth
                                ? Colors.white
                                : Colors.grey.withOpacity(0.9))),
      )*/
    );
  }

  Color dateColor(bool isToday, bool isSelected) {
    if (isToday) {
      return Colors.black;
    } else if (isSelected) {
      return Colors.black;
    } else {
      return Colors.black;
    }
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.selectedMonth,
    required this.selectedDate,
    required this.onChange,
  });

  final DateTime selectedMonth;
  final DateTime? selectedDate;

  final ValueChanged<DateTime> onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                onChange(selectedMonth.addMonth(-1));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: Colors.white,
              ),
            ),
            AppText(
              text:
                  '${DateHelper.expiryMonth(selectedMonth)} ${selectedMonth.year}  ',
              textSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () {
                onChange(selectedMonth.addMonth(1));
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CalendarMonthData {
  final int year;
  final int month;

  int get daysInMonth => DateUtils.getDaysInMonth(year, month);
  int get firstDayOfWeekIndex => 0;

  int get weeksCount => ((daysInMonth + firstDayOffset) / 7).ceil();

  const CalendarMonthData({
    required this.year,
    required this.month,
  });

  int get firstDayOffset {
    final int weekdayFromMonday = DateTime(year, month).weekday;

    return (weekdayFromMonday - ((firstDayOfWeekIndex - 1) % 7)) % 7 - 1;
  }

  List<List<CalendarDayData>> get weeks {
    final res = <List<CalendarDayData>>[];
    var firstDayMonth = DateTime(year, month, 1);
    var firstDayOfWeek = firstDayMonth.subtract(Duration(days: firstDayOffset));

    for (var w = 0; w < weeksCount; w++) {
      final week = List<CalendarDayData>.generate(
        7,
        (index) {
          final date = firstDayOfWeek.add(Duration(days: index));

          final isActiveMonth = date.year == year && date.month == month;

          return CalendarDayData(
            date: date,
            isActiveMonth: isActiveMonth,
            isActiveDate: date.isToday,
          );
        },
      );
      res.add(week);
      firstDayOfWeek = firstDayOfWeek.add(const Duration(days: 7));
    }
    return res;
  }
}

class CalendarDayData {
  final DateTime date;
  final bool isActiveMonth;
  final bool isActiveDate;

  const CalendarDayData({
    required this.date,
    required this.isActiveMonth,
    required this.isActiveDate,
  });
}
