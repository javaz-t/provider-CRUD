import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/add_data.dart';
import 'package:provider_todo/provider.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:ChangeNotifierProvider(create: (context)=>TodoProvider(),
          child: HomePage()),
    );
  }
}

