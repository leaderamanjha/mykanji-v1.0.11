import '../controller/return_refund_controller.dart';
import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<ReturnRefundController>();

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
