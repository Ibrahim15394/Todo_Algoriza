import 'package:flutter/material.dart';

class BuildItemAllWidget extends StatelessWidget {
  const BuildItemAllWidget({Key? key}) : super(key: key);
  final bool value = false;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (value) {},
        ),
        const Expanded(
          flex: 3,
          child: Text(
            'Design team meeting ',
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF484848),
            ),
            maxLines: 1,
          ),
        ),
        IconButton(
          onPressed: ()
          {
          },
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
