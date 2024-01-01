import '../controller/cart_controller.dart';
import '../models/listitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ListitemItemWidget extends StatelessWidget {
  ListitemItemWidget(
    this.listitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListitemItemModel listitemItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillDeeppurple5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listitemItemModelObj.headline!.value,
                    style: CustomTextStyles.bodyLargeGray900,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    listitemItemModelObj.supportingText!.value,
                    style: CustomTextStyles.bodyMediumRobotoGray700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
