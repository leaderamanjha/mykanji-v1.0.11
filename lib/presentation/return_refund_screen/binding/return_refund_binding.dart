import '../controller/return_refund_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReturnRefundScreen.
///
/// This class ensures that the ReturnRefundController is created when the
/// ReturnRefundScreen is first loaded.
class ReturnRefundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReturnRefundController());
  }
}
