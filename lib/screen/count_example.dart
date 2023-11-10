import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    print('Build');
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Count App'),
      ),
      body: Center(child: Consumer<CountProvider>(
        builder: (context, value, child) {
          return Text(
            value.count.toString(),
            style: TextStyle(
              fontSize: 25,
            ),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.ssetCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
