import '../controller/return_refund_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReturnRefundOneScreen.
///
/// This class ensures that the ReturnRefundOneController is created when the
/// ReturnRefundOneScreen is first loaded.
class ReturnRefundOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReturnRefundOneController());
  }
}
