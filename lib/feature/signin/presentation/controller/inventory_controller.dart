import 'package:get/get.dart';

class InventoryController extends GetxController {
  final RxList<Map<String, String>> items = <Map<String, String>>[
    {'name': 'Horse Shoes', 'price': '20\$', 'qty': '200'},
    {'name': 'Lead', 'price': '40\$', 'qty': '150'},
    {'name': 'Ear Net', 'price': '30\$', 'qty': '180'},
    {'name': 'Hoof Pick', 'price': '40\$', 'qty': '50'},
  ].obs;

  void removeItem(int index) {
    if (index >= 0 && index < items.length) {
      items.removeAt(index);
    }
  }

  void addItem() {
    items.add({
      'name': 'New Product',
      'price': '0\$',
      'qty': '0',
    });
  }
}
