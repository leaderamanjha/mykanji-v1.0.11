import '../../../core/app_export.dart';
import 'productcard_item_model.dart';

/// This class defines the variables used in the [productscreen_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductscreenContainerModel {
  Rx<List<ProductcardItemModel>> productcardItemList = Rx([
    ProductcardItemModel(
        productTitle: "Zari Pure Silk ".obs, productPrice: "₹3,500".obs),
    ProductcardItemModel(
        productTitle: "Sarees 3".obs, productPrice: "₹3,500".obs)
  ]);
}
