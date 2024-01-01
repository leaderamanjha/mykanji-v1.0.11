import '../../../core/app_export.dart';
import 'listsection_item_model.dart';

/// This class defines the variables used in the [quotesrequested_page],
/// and is typically used to hold data that is passed between different parts of the application.
class QuotesrequestedModel {
  Rx<List<ListsectionItemModel>> listsectionItemList = Rx([
    ListsectionItemModel(
        headlineText: "Stitching: Cut blouses".obs,
        supportingText: "Price: ₹2000 | Delivery - 10 days".obs),
    ListsectionItemModel(
        headlineText: "Stitching: Cut blouses".obs,
        supportingText: "Price: ₹2000 | Delivery - 10 days".obs),
    ListsectionItemModel(
        headlineText: "Stitching: Cut blouses".obs,
        supportingText: "Price: ₹2000 | Delivery - 10 days".obs)
  ]);
}
