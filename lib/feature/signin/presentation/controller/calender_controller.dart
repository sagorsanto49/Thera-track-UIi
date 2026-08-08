import 'package:get/get.dart';

class CalenderController extends GetxController {
  final Rx<DateTime> selectedDate = DateTime(2025, 1, 24).obs;
  final Rx<DateTime> currentMonth = DateTime(2025, 1).obs;

  List<DateTime> getDaysForCurrentMonth() {
    final lastDay = DateTime(currentMonth.value.year, currentMonth.value.month + 1, 0);

    return List.generate(
      lastDay.day,
      (index) => DateTime(currentMonth.value.year, currentMonth.value.month, index + 1),
    );
  }

  void previousMonth() {
    currentMonth.value = DateTime(currentMonth.value.year, currentMonth.value.month - 1);
  }

  void nextMonth() {
    currentMonth.value = DateTime(currentMonth.value.year, currentMonth.value.month + 1);
  }

  void selectDate(DateTime day) {
    selectedDate.value = day;
  }
}
