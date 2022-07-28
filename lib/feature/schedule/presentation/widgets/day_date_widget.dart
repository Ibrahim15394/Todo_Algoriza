import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/material.dart';

class DayDateWidget extends StatelessWidget {
  const DayDateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedHorizontalCalendar(
          tableCalenderIcon: const Icon(Icons.calendar_today, color: Colors.white,),
          date: DateTime.now(),
          textColor: Colors.black45,
          backgroundColor: Colors.white,
          tableCalenderThemeData:  ThemeData.light().copyWith(
            primaryColor: Colors.green,
            accentColor: Colors.red,
            colorScheme: const ColorScheme.light(primary: Colors.green),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          selectedColor: Colors.redAccent,
          onDateSelected: (date){
          }
      ),
    );
  }
}
