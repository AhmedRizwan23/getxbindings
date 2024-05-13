import 'package:get/get.dart';
import 'package:getx_tutorial/bindcontroller.dart';

class Allbindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Bindcontroller());
  }
}
