import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/delivered_orders_screen/models/delivered_orders_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DeliveredOrdersScreen.
///
/// This class manages the state of the DeliveredOrdersScreen, including the
/// current deliveredOrdersModelObj
class DeliveredOrdersController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<DeliveredOrdersModel> deliveredOrdersModelObj = DeliveredOrdersModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }
}
