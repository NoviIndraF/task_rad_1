import 'package:flutter/material.dart';
import 'package:task_rad_1/screen/landscape_view.dart';
import 'package:task_rad_1/screen/potrait_view.dart';
import 'package:task_rad_1/control/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth >= 400) {
          return LandscapeView(
            width: context.screenWidth,
            height: context.screenHeight,
          );
        } else {
          return PotraitView(
            width: context.screenWidth,
            height: context.screenHeight,
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
    );
  }
}
