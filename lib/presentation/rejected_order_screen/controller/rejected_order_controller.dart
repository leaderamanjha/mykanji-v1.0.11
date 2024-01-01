import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/rejected_order_screen/models/rejected_order_model.dart';

/// A controller class for the RejectedOrderScreen.
///
/// This class manages the state of the RejectedOrderScreen, including the
/// current rejectedOrderModelObj
class RejectedOrderController extends GetxController {
  Rx<RejectedOrderModel> rejectedOrderModelObj = RejectedOrderModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in rejectedOrderModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    rejectedOrderModelObj.value.dropdownItemList.refresh();
  }
}
