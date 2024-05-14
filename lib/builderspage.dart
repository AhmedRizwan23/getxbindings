import 'package:flutter/material.dart';

int count = 0;
bool button = true;

class Builderspage extends StatefulWidget {
  const Builderspage({super.key});

  @override
  State<Builderspage> createState() => _BuilderspageState();
}

class _BuilderspageState extends State<Builderspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Future Builders"),
              buildfuturebuilder(),
              const SizedBox(height: 150),
              const Text("Stream Builder"),
              streambuilder(),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      button = !button;
                    });
                  },
                  child: Text(button ? "Stop" : "Start"))
            ],
          ),
        ),
      ),
    );
  }
}

streambuilder() {
  return StreamBuilder<int>(
    stream: watch(),
    builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      }
      if (snapshot.hasData) {
        return Text("Stopwatch ${snapshot.data}");
      }
      return const Text("Stopwatch paused");
    },
  );
}

Stream<int> watch() async* {
  while (button) {
    await Future.delayed(const Duration(seconds: 1));
    yield count++;
  }
}

buildfuturebuilder() {
  return Center(
    child: FutureBuilder(
      future: calculatesquare(4),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text("Square ${snapshot.data}");
        }
        return const CircularProgressIndicator();
      },
    ),
  );
}

calculatesquare(int number) async {
  await Future.delayed(const Duration(seconds: 5));
  return number * number;
}
