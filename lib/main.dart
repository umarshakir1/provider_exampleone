import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/count_provider.dart';
import 'package:state_management/provider/example_oneprovider.dart';
import 'package:state_management/screen/count_example.dart';
import 'package:state_management/screen/example_one.dart';
import 'package:state_management/statel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ],
      child: MaterialApp(
        home: ExampleOneScreen(),
      ),
    );
  }
}
