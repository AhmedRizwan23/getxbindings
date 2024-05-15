import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bindings.dart';
import 'package:getx_tutorial/builderspage.dart';
import 'package:getx_tutorial/streambuilder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get x'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Column(
            children: [
              Card(
                child: ListTile(
                  title: const Text("Get x Bindings"),
                  onTap: () {
                    Get.to(() => const Bindingspage());
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Future and stream builder "),
                  onTap: () {
                    Get.to(() => const Builderspage());
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Stream builder "),
                  onTap: () {
                    Get.to(() =>  streambuilderr());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Get.snackbar(
            "Title",
            "Button clicked",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.account_circle),
      ),
    );
  }
}
