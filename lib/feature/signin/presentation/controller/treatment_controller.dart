import 'package:get/get.dart';

class TreatmentController extends GetxController {
  final RxList<int> treatmentList = <int>[0, 1, 2, 3, 4].obs;

  void addTreatmentRow() {
    treatmentList.add(treatmentList.length);
  }

  void removeTreatmentRow(int index) {
    if (index >= 0 && index < treatmentList.length) {
      treatmentList.removeAt(index);
    }
  }
}
