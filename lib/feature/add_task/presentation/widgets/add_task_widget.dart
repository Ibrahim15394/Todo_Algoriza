import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/core/util/cubit/cubit.dart';
import 'package:todo_app/core/util/cubit/states.dart';
import 'package:todo_app/core/util/functions/navigate_and_finish.dart';
import 'package:todo_app/core/util/styles/colors.dart';
import 'package:todo_app/core/util/widgets/default_form_field.dart';
import 'package:todo_app/core/util/widgets/my_button.dart';
import 'package:todo_app/feature/board/presentation/pages/board_screen.dart';

class AddTaskWidget extends StatelessWidget {
   AddTaskWidget({Key? key}) : super(key: key);

  var titleController = TextEditingController();
  var dateController = TextEditingController();
  var starTimeController = TextEditingController();
  var endTimeController = TextEditingController();
   var repeatController = TextEditingController();
  var remindController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context, state){},
      builder:(context, state)
      {
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
              'Add task',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    const Text(
                      'Title',
                      style:TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    DefaultFormField(
                      controller: titleController,
                      type: TextInputType.text,
                      validate: 'you must enter title',
                      radius: 10,
                      isPassword: false,
                      hintText: 'Design team meeting',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Date',
                      style:TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    DefaultFormField(
                      controller: dateController,
                      type: TextInputType.datetime,
                      validate: 'you must enter date',
                      radius: 10,
                      isPassword: false,
                      hintText: '2202/8/31',
                      suffixIcon:  IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFFcfcfcf),
                          size: 35.0,
                        ),
                        onPressed:
                            ()
                        {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.parse('2022-12-30'),
                          ).then((value) {
                            dateController.text =
                                DateFormat('yyyy/MM/dd').format(value!);
                          });
                        },
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            const Text(
                              'Start time',
                              style:TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: 170,
                              child: DefaultFormField(
                                controller: starTimeController,
                                type: TextInputType.datetime,
                                validate: 'you must enter time',
                                radius: 10,
                                isPassword: false,
                                hintText: '12:00am',
                                suffixIcon:  IconButton(
                                  icon: const Icon(
                                    Icons.access_time_outlined,
                                    color: Color(0xFFcfcfcf),
                                  ),
                                  onPressed: ()
                                  {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      starTimeController.text =
                                          value!.format(context).toString();
                                    });
                                  },
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            const Text(
                              'End time',
                              style:TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: 170,
                              child: DefaultFormField(
                                controller: endTimeController,
                                type: TextInputType.datetime,
                                validate: 'you must enter time',
                                radius: 10,
                                isPassword: false,
                                hintText: '16:00pm',
                                suffixIcon:  IconButton(
                                  icon: const Icon(
                                    Icons.access_time_outlined,
                                    color: Color(0xFFcfcfcf),
                                  ),
                                  onPressed: ()
                                  {
                                    showTimePicker(
                                      context: context,
                                      initialTime:TimeOfDay.now(),
                                    ).then((value) {
                                      endTimeController.text =
                                          value!.format(context).toString();
                                    });
                                  },
                                ),
                                onTap: ()
                                {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Remind',
                      style:TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    DefaultFormField(
                      controller: remindController,
                      type: TextInputType.datetime,
                      radius: 10,
                      isPassword: false,
                      hintText: '10 minutes early',
                      suffixIcon:  IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFFcfcfcf),
                          size: 35.0,
                        ),
                        onPressed: ()
                        {
                        },
                      ),
                      onTap: ()
                      {
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Repeat',
                      style:TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    DefaultFormField(
                      controller: remindController,
                      type: TextInputType.datetime,
                      radius: 10,
                      isPassword: false,
                      hintText: 'weekly',
                      suffixIcon:  IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFFcfcfcf),
                          size: 35.0,
                        ),
                        onPressed: (){},
                      ),
                      onTap: ()
                      {
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Color',
                      style:TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    MyButton(
                      text: 'Create a Task',
                      onClick: ()
                      {
                        if(formKey.currentState!.validate())
                          {
                            titleController.text;
                            dateController.text;
                            starTimeController.text;
                            endTimeController.text;

                          }
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
              ),
            ),
          ),
        );
      } ,

    );
  }
}
