import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/ongoing_order_screen/models/ongoing_order_model.dart';

/// A controller class for the OngoingOrderScreen.
///
/// This class manages the state of the OngoingOrderScreen, including the
/// current ongoingOrderModelObj
class OngoingOrderController extends GetxController {
  Rx<OngoingOrderModel> ongoingOrderModelObj = OngoingOrderModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  onSelected(dynamic value) {
    for (var element in ongoingOrderModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    ongoingOrderModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in ongoingOrderModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    ongoingOrderModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in ongoingOrderModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    ongoingOrderModelObj.value.dropdownItemList2.refresh();
  }
}
