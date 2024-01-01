import '../controller/ongoing_order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OngoingOrderScreen.
///
/// This class ensures that the OngoingOrderController is created when the
/// OngoingOrderScreen is first loaded.
class OngoingOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OngoingOrderController());
  }
}
