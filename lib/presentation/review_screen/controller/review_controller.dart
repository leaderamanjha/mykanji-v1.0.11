import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/review_screen/models/review_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReviewScreen.
///
/// This class manages the state of the ReviewScreen, including the
/// current reviewModelObj
class ReviewController extends GetxController {
  TextEditingController textFieldController = TextEditingController();

  Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

  @override
  void onClose() {
    super.onClose();
    textFieldController.dispose();
  }
}
