import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/core/util/functions/navigate_to.dart';
import 'package:todo_app/core/util/widgets/my_divider.dart';
import 'package:todo_app/feature/all/presentation/pages/all_screen.dart';
import 'package:todo_app/feature/completed/presentation/pages/completed_screen.dart';
import 'package:todo_app/feature/favorite/presentation/pages/favorite_screen.dart';
import 'package:todo_app/feature/schedule/presentation/pages/schedule_screen.dart';
import 'package:todo_app/feature/uncompleted/presentation/pages/uncompleted_screen.dart';

class BoardWidget extends StatelessWidget {
  BoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Board',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),

            ),
          ),
          actions:
          [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  navigateTo(context, const ScheduleScreen());
                },
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xFF4f4f4f),
                ),
              ),
            ),
          ],
          elevation: 0.0,
        ),
        body: Column(
          children: const [
            MyDivider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: TabBar(
                unselectedLabelColor: Color(0xFFc9c9c9),
                indicatorColor: Colors.black,
                isScrollable: true,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,

                tabs:
                [
                  Tab(child: Text('All', style: TextStyle(fontSize: 17.0),),),
                  Tab(child: Text(
                    'Completed', style: TextStyle(fontSize: 17.0),),),
                  Tab(child: Text(
                    'Uncompleted', style: TextStyle(fontSize: 17.0),),),
                  Tab(child: Text(
                    'Favorite', style: TextStyle(fontSize: 17.0),),),
                ],
              ),
            ),
            MyDivider(),
            Expanded(
              child: TabBarView(
                children:
                [
                  AllScreen(),
                  CompletedScreen(),
                  UncompletedScreen(),
                  FavoriteScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
