import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          isOpen() ? 'Open' : 'Closed',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF087443),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          isOpen() ? '(${getOpeningHours()}-${getClosingHours()})' : '',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF667085),
          ),
        ),
      ],
    );
  }

  int getCurrentDay() {
    DateTime now = DateTime.now();
    int weekday = now.weekday - 1; // 0 is Monday
    return (weekday % 7);
  }

  bool isOpen() {
    // Check for exceptions
    final openingHoursExceptions = getOpeningHoursExceptions();
    final currentDate = DateTime.now();
    //convert currentDate to 2024-08-15 format
    final formattedCurrentDate =
        '${currentDate.year}-${currentDate.month}-${currentDate.day}';

    // Check if current date is in the exceptions list
    if (openingHoursExceptions.contains(formattedCurrentDate)) {
      return false;
    }

    // Check for regular opening hours
    int currentDay = getCurrentDay();
    String openingHours = '';
    String closingHours = '';

    stashPoint.openingHours?.forEach((element) {
      if (element.day == currentDay) {
        openingHours = element.open ?? '';
        closingHours = element.close ?? '';
      }
    });

    final currentTime = DateTime.now();
    final currentHour = currentTime.hour;
    final currentMinute = currentTime.minute;

    if (openingHours.isEmpty || closingHours.isEmpty) {
      return false;
    }

    final openingHour = int.parse(openingHours.split(':')[0]);
    final openingMinute = int.parse(openingHours.split(':')[1]);
    final closingHour = int.parse(closingHours.split(':')[0]);
    final closingMinute = int.parse(closingHours.split(':')[1]);

    // Check if current time is within opening hours
    if (currentHour > openingHour && currentHour < closingHour) {
      return true;
    } else if (currentHour == openingHour && currentMinute >= openingMinute) {
      return true;
    } else if (currentHour == closingHour && currentMinute <= closingMinute) {
      return true;
    } else {
      return false;
    }
  }

  String getOpeningHours() {
    int currentDay = getCurrentDay();
    String openingHours = '';

    stashPoint.openingHours?.forEach((element) {
      if (element.day == currentDay) {
        openingHours = element.open ?? '';
      }
    });

    return convertTo12HourFormat(openingHours);
  }

  String getClosingHours() {
    int currentDay = getCurrentDay();
    String closingHours = '';

    stashPoint.openingHours?.forEach((element) {
      if (element.day == currentDay) {
        closingHours = element.close ?? '';
      }
    });

    return convertTo12HourFormat(closingHours);
  }

  String convertTo12HourFormat(String time) {
    final hour = int.parse(time.split(':')[0]);
    final minute = time.split(':')[1];
    final period = hour >= 12 ? 'pm' : 'am';
    final hour12 = hour > 12 ? hour - 12 : hour;
    return '$hour12:$minute$period';
  }

  List<String> getOpeningHoursExceptions() {
    List<String> openingHoursExceptions = [];

    stashPoint.openingHours?.forEach((element) {
      if (element.day == -1) {
        openingHoursExceptions.add(
          '${element.open ?? ''}-${element.close ?? ''}',
        );
      }
    });

    return openingHoursExceptions;
  }
}
