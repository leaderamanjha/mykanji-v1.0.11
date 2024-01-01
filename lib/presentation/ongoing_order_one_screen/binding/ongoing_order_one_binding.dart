import '../controller/ongoing_order_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OngoingOrderOneScreen.
///
/// This class ensures that the OngoingOrderOneController is created when the
/// OngoingOrderOneScreen is first loaded.
class OngoingOrderOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OngoingOrderOneController());
  }
}
