import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = "R\$ 888.222,00";
  bool eyeValue = true;

  void showValue() {
    eyeValue = !eyeValue;

    update();
  }
}
