import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/ongoing_order_one_screen/models/ongoing_order_one_model.dart';

/// A controller class for the OngoingOrderOneScreen.
///
/// This class manages the state of the OngoingOrderOneScreen, including the
/// current ongoingOrderOneModelObj
class OngoingOrderOneController extends GetxController {
  Rx<OngoingOrderOneModel> ongoingOrderOneModelObj = OngoingOrderOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in ongoingOrderOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    ongoingOrderOneModelObj.value.dropdownItemList.refresh();
  }
}
