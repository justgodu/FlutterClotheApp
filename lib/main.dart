import 'package:flutter/material.dart';
import 'package:middterm_test/screens/add_clothe_screen.dart';
import 'package:middterm_test/screens/clothe_details.dart';
import 'package:middterm_test/screens/edit_clothe_screen.dart';
import 'package:middterm_test/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothes App',
      theme: ThemeData(
        accentColor: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          )
        )
      ),
      home: HomeScreen(),
      routes: {
          ClotheDetailScreen.routeName: (ctx) => ClotheDetailScreen(),
          AddNewClothe.routeName: (ctx) => AddNewClothe(),
          ClotheEditScreen.routeName: (ctx) => ClotheEditScreen()
      },
    );

  }
}

