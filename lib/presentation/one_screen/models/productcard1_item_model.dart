import '../../../core/app_export.dart';

/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {
  Productcard1ItemModel({
    this.title,
    this.subhead,
    this.id,
  }) {
    title = title ?? Rx("Zari Pure Silk ");
    subhead = subhead ?? Rx("₹3,500");
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? subhead;

  Rx<String>? id;
}
