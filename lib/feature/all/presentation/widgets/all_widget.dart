import 'package:flutter/material.dart';
import 'package:todo_app/core/util/functions/navigate_to.dart';
import 'package:todo_app/core/util/styles/colors.dart';
import 'package:todo_app/core/util/widgets/my_button.dart';
import 'package:todo_app/feature/add_task/presentation/pages/add_task_screen.dart';
import 'package:todo_app/feature/all/presentation/widgets/build_item_all_widget.dart';

class AllWidget extends StatelessWidget {
  const AllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:
        [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>
              const BuildItemAllWidget(),
              separatorBuilder: ( context,  index) =>
              const SizedBox(height: 20.0,),
              itemCount: 4,
            ),
          ),
          MyButton(
            text: 'Add a task',
            onClick:
                ()
            {
              navigateTo(context, const AddTaskScreen());
            },
            background: button,
            height: 50.0,
            radius: 15,
            style:const TextStyle(
                color: textButton,
                fontSize: 20.0

            ),

          ),
        ],
      ),
    );
  }
}
