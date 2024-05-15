import 'dart:async';

import 'package:flutter/material.dart';

class streambuilderr extends StatelessWidget {
  streambuilderr({super.key});

  int count = 0;
  StreamController countercontroller = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: StreamBuilder<dynamic>(
        stream: countercontroller.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          } else {
            const CircularProgressIndicator();
          }
          return const Text("No data available");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          countercontroller.sink.add(count);
        },
      ),
    );
  }
}
