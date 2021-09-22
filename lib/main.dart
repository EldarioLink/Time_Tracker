import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/landing_page.dart';
import 'package:time_tracker/services/auth.dart';

/*Функция runApp () берет данный виджет и делает его корнем дерева виджетов*/
Future<void> main() async {
  //Простой ответ: если Flutter нужно вызвать собственный код перед вызовом runApp. Гарантирует, что у вас есть экземпляр WidgetsBinding, который необходим для использования каналов платформы для вызова собственного кода.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // указывает что класс 'ниже' build есть в классе предке, но мы его перезаписываем
  // BuildContext используется для поиска определенного виджета в дереве виджетов, и каждый виджет имеет свой собственный BuidContext.
  Widget build(BuildContext context) {
    //Кждый виджет во Flutter создается методом build
    return MaterialApp(
      title: "Time Tracker",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
