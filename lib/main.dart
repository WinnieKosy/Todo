import 'package:flutter/material.dart';
import 'package:todo_app/page/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.deepOrange,
      ),
     home: const HomePage(),
     // home: const Work(),
     //home: CategoryScroller(),
    );
  }
}

