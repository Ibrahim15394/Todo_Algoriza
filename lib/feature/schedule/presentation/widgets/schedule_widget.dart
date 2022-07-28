import 'package:flutter/material.dart';
import 'package:todo_app/core/util/functions/navigate_and_finish.dart';
import 'package:todo_app/core/util/widgets/my_divider.dart';
import 'package:todo_app/feature/board/presentation/pages/board_screen.dart';
import 'package:todo_app/feature/schedule/presentation/widgets/build_item_schedule_widget.dart';
import 'package:todo_app/feature/schedule/presentation/widgets/day_date_widget.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 18.0,
          ) ,
          onPressed:
              () {
            navigateAndFinish(context, const BoardScreen(),);
          },
        ),
        title: const Text(
          'Schedule',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children:
        [
          const MyDivider(),
          const DayDateWidget(),
          const MyDivider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    const [
                      Text(
                          'Sunday'
                      ),
                      Text(
                          'Sunday'
                      ),

                    ],
                  ),
                  const SizedBox(height: 20.0,),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => const BuildItemScheduleWidget(),
                      separatorBuilder: (context, index) => const SizedBox(height: 15.0,),
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
