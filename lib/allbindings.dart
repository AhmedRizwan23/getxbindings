import 'package:get/get.dart';
import 'package:getx_tutorial/bindcontroller.dart';

class Allbindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Bindcontroller(), fenix: true);

// In GetX, the fenix parameter is used in conjunction with the Get.lazyPut() method. It determines whether to recreate an instance of a dependency if it's requested again after being previously disposed of.

// When you use Get.lazyPut() to register a dependency, you're telling GetX to lazily instantiate the dependency. This means that the dependency is only created when it's first requested, and subsequent requests return the same instance.

// The fenix parameter, when set to true, ensures that even if the dependency has been disposed
  }
}
