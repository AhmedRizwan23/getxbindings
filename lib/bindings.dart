import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bindcontroller.dart';

// Bindcontroller controller = Get.find();

class Bindingspage extends StatelessWidget {
  const Bindingspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Call Get.find() inside the build method
    print("get find");
    Bindcontroller controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("GET x binding"),
      ),
      body: Text(controller.a),
    );
  }
}
