import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:testing_start/data/model.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    final test =
        TestModel(name: 'visuth', age: '18', location: 'PP', image: 'Image');

    final json = test.toJson();
    print('JSON:${test.toJson()}');

    final newtest = TestModel.fromJson(json);
    print(newtest);
  }

  Widget build(BuildContext context) {
    final test =
        TestModel(name: 'visuth', age: '18', location: 'PP', image: 'Image');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Serializable'),
      ),
      body: Column(
        children: [
          Text(test.name),
          Text(test.age),
          Text(test.location),
          Text(test.image),
        ],
      ),
    );
  }
}
