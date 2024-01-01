import '../controller/ongoing_order_controller.dart';
import '../models/frame2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  var controller = Get.find<OngoingOrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161.v,
      width: 182.h,
      decoration: AppDecoration.fillDeeppurple5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 24.adaptSize,
        width: 24.adaptSize,
        alignment: Alignment.topRight,
      ),
    );
  }
}
