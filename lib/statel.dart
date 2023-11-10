import 'dart:async';

import 'package:flutter/material.dart';

class StateL extends StatefulWidget {
  StateL({super.key});

  @override
  State<StateL> createState() => _StateLState();
}

class _StateLState extends State<StateL> {
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(DateTime.now().hour.toString() +
                    ":" +
                    DateTime.now().minute.toString() +
                    ":" +
                    DateTime.now().second.toString())),
          ),
        ],
      ),
    );
  }
}
