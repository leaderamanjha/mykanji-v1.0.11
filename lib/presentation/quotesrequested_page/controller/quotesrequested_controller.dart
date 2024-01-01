import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/quotesrequested_page/models/quotesrequested_model.dart';

/// A controller class for the QuotesrequestedPage.
///
/// This class manages the state of the QuotesrequestedPage, including the
/// current quotesrequestedModelObj
class QuotesrequestedController extends GetxController {
  QuotesrequestedController(this.quotesrequestedModelObj);

  Rx<QuotesrequestedModel> quotesrequestedModelObj;
}
