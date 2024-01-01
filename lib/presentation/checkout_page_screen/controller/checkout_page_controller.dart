import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/checkout_page_screen/models/checkout_page_model.dart';

/// A controller class for the CheckoutPageScreen.
///
/// This class manages the state of the CheckoutPageScreen, including the
/// current checkoutPageModelObj
class CheckoutPageController extends GetxController {
  Rx<CheckoutPageModel> checkoutPageModelObj = CheckoutPageModel().obs;
}
