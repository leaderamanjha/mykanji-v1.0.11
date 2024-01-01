import '../../../core/app_export.dart';

/// This class is used in the [returnrefundlist_item_widget] screen.
class ReturnrefundlistItemModel {
  ReturnrefundlistItemModel({
    this.qualityIssueImage,
    this.headlineText,
    this.supportingText,
    this.inboxButton,
    this.id,
  }) {
    qualityIssueImage = qualityIssueImage ?? Rx(ImageConstant.imgContrast);
    headlineText = headlineText ?? Rx("Quality issue");
    supportingText = supportingText ?? Rx("Poor Fabric, Material, & Finishing");
    inboxButton = inboxButton ?? Rx(ImageConstant.imgInbox);
    id = id ?? Rx("");
  }

  Rx<String>? qualityIssueImage;

  Rx<String>? headlineText;

  Rx<String>? supportingText;

  Rx<String>? inboxButton;

  Rx<String>? id;
}
