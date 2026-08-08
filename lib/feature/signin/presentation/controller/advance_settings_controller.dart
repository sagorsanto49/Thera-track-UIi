import 'package:doctor/feature/signin/presentation/page/human1.dart';
import 'package:doctor/feature/signin/presentation/page/paid.dart';
import 'package:get/get.dart';

class AdvanceSettingsController extends GetxController {
  final animalSelected = false.obs;
  final humanSelected = true.obs;

  void toggleAnimalSelection() {
    animalSelected.value = !animalSelected.value;
  }

  void goToHuman() {
    Get.to(() => const Human1());
  }

  void continueToPaid() {
    Get.to(() => const PaidScreen());
  }
}
