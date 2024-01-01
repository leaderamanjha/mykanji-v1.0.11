import '../controller/delivered_orders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveredOrdersScreen.
///
/// This class ensures that the DeliveredOrdersController is created when the
/// DeliveredOrdersScreen is first loaded.
class DeliveredOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveredOrdersController());
  }
}
