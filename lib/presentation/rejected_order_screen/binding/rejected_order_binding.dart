import '../controller/rejected_order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RejectedOrderScreen.
///
/// This class ensures that the RejectedOrderController is created when the
/// RejectedOrderScreen is first loaded.
class RejectedOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RejectedOrderController());
  }
}
