import 'frame1_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [review_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewModel {
  Rx<List<Frame1ItemModel>> frame1ItemList =
      Rx(List.generate(2, (index) => Frame1ItemModel()));
}
