import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/core/util/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  late Database database;

  void createDatabase() {
    var database =  openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        database
            .execute('CREATE TABLE tasks('
                'id INTEGER PRIMARY KEY,'
                ' title TEXT,'
                ' date TEXT,'
                ' start TEXT,'
                ' end TEXT,'
                ' remind INTEGER,'
                'repeat TEXT,'
                ' color TEXT'
                ')')
            .then((value) {})
            .catchError((error) {
          print('error ${error.toString()}');
        });
      },
      onOpen: (database) {

      },
    );
  }


}
