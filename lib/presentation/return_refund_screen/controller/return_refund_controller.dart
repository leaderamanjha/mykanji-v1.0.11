import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/return_refund_screen/models/return_refund_model.dart';

/// A controller class for the ReturnRefundScreen.
///
/// This class manages the state of the ReturnRefundScreen, including the
/// current returnRefundModelObj
class ReturnRefundController extends GetxController {
  Rx<ReturnRefundModel> returnRefundModelObj = ReturnRefundModel().obs;
}
