import 'package:get/get.dart';

class HomePageController extends GetxController{
  String saldo = 'R\$ 0.00';
  String invoice = 'R\$ 0.00';
  String limit = 'R\$ 0.00';
  bool eyesValue = true;

  void showValue (){
    eyesValue = !eyesValue;
    update();
  }
}