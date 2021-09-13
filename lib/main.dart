import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

/*Функция runApp () берет данный виджет и делает его корнем дерева виджетов*/
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // указывает что класс 'ниже' build есть в классе предке, но мы его перезаписываем
  // BuildContext используется для поиска определенного виджета в дереве виджетов, и каждый виджет имеет свой собственный BuidContext.
  Widget build(BuildContext context) {
    //Как мы знаем, каждый виджет во Flutter создается методом build
    return MaterialApp(
        title: "Time Tracker",
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: SignInPage());
  }
}
