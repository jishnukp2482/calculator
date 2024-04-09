import 'package:calculator/presentation/manager/controller/calc_controller.dart';
import 'package:get/get.dart';

class CalcControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalcController());
  }
}
