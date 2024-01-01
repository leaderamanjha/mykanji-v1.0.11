import '../../../core/app_export.dart';
import 'returnrefundlist_item_model.dart';

/// This class defines the variables used in the [return_refund_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReturnRefundOneModel {
  Rx<List<ReturnrefundlistItemModel>> returnrefundlistItemList = Rx([
    ReturnrefundlistItemModel(
        qualityIssueImage: ImageConstant.imgContrast.obs,
        headlineText: "Quality issue".obs,
        supportingText: "Poor Fabric, Material, & Finishing".obs,
        inboxButton: ImageConstant.imgInbox.obs),
    ReturnrefundlistItemModel(
        qualityIssueImage: ImageConstant.imgContrastGray90004.obs,
        headlineText: "Damaged Product".obs,
        supportingText: "Dirty, old, torn, or broken products".obs,
        inboxButton: ImageConstant.imgInboxGray9000420x20.obs)
  ]);
}
