import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/quotesreceived_page/models/quotesreceived_model.dart';

/// A controller class for the QuotesreceivedPage.
///
/// This class manages the state of the QuotesreceivedPage, including the
/// current quotesreceivedModelObj
class QuotesreceivedController extends GetxController {
  QuotesreceivedController(this.quotesreceivedModelObj);

  Rx<QuotesreceivedModel> quotesreceivedModelObj;
}
