import '../controller/quotesreceived_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QuotesreceivedTabContainerScreen.
///
/// This class ensures that the QuotesreceivedTabContainerController is created when the
/// QuotesreceivedTabContainerScreen is first loaded.
class QuotesreceivedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuotesreceivedTabContainerController());
  }
}
