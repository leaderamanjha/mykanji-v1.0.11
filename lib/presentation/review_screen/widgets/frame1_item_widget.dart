import '../controller/review_controller.dart';
import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  var controller = Get.find<ReviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161.v,
      width: 182.h,
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillDeeppurple5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomIconButton(
        height: 24.adaptSize,
        width: 24.adaptSize,
        padding: EdgeInsets.all(2.h),
        alignment: Alignment.topRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgCloseGray80001,
        ),
      ),
    );
  }
}
