import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/return_refund_one_screen/models/return_refund_one_model.dart';

/// A controller class for the ReturnRefundOneScreen.
///
/// This class manages the state of the ReturnRefundOneScreen, including the
/// current returnRefundOneModelObj
class ReturnRefundOneController extends GetxController {
  Rx<ReturnRefundOneModel> returnRefundOneModelObj = ReturnRefundOneModel().obs;
}
