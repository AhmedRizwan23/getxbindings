import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/bindcontroller.dart';

class Bindingspage extends StatelessWidget {
  Bindingspage({super.key});
  Bindcontroller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GET x binding"),
      ),
      body: Text(controller.a),
    );
  }
}
