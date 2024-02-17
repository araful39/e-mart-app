
import 'package:get/get.dart';
class LoginController extends GetxController {
  RxBool isClick = true.obs;

  visible() {
    isClick.value = !isClick.value;
  }
}
