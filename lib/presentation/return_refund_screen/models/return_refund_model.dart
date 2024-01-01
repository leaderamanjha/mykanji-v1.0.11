import 'frame_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [return_refund_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReturnRefundModel {
  Rx<List<FrameItemModel>> frameItemList =
      Rx(List.generate(2, (index) => FrameItemModel()));
}
