import '../../../core/app_export.dart';

/// This class is used in the [listsection_item_widget] screen.
class ListsectionItemModel {
  ListsectionItemModel({
    this.headlineText,
    this.supportingText,
    this.id,
  }) {
    headlineText = headlineText ?? Rx("Stitching: Cut blouses");
    supportingText = supportingText ?? Rx("Price: ₹2000 | Delivery - 10 days");
    id = id ?? Rx("");
  }

  Rx<String>? headlineText;

  Rx<String>? supportingText;

  Rx<String>? id;
}
