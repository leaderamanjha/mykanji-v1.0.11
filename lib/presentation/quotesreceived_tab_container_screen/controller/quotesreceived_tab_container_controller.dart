import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/quotesreceived_tab_container_screen/models/quotesreceived_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the QuotesreceivedTabContainerScreen.
///
/// This class manages the state of the QuotesreceivedTabContainerScreen, including the
/// current quotesreceivedTabContainerModelObj
class QuotesreceivedTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<QuotesreceivedTabContainerModel> quotesreceivedTabContainerModelObj =
      QuotesreceivedTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
