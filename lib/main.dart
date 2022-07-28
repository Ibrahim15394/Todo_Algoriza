import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/util/cubit/cubit.dart';
import 'package:todo_app/core/util/cubit/states.dart';
import 'package:todo_app/feature/board/presentation/pages/board_screen.dart';
import 'core/util/cubit/bloc_observer.dart';
import 'core/util/styles/themes.dart';

void main() {
  BlocOverrides.runZoned(
        () {
          print('hello');
        },
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return BlocProvider(
              create: (BuildContext context) => AppCubit(),
              child: BlocConsumer<AppCubit, AppStates>(
                listener: (context, state){},
                builder: (context, state)
                {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: lightTheme,
                    home:const BoardScreen(),
                  );
                },

              ),
            );
          },
        );
  }
}

