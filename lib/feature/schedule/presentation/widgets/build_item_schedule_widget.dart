import 'package:flutter/material.dart';

class BuildItemScheduleWidget extends StatelessWidget {
  const BuildItemScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          height: 85.0,
          width: double.infinity,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: Colors.red,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                const [
                  Text(
                    '04:00pm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Design team meeting',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                    Icons.radio_button_unchecked_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
