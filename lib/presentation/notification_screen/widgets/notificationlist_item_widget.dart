import '../controller/notification_controller.dart';
import '../models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(
    this.notificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Obx(
                  () => Text(
                    notificationlistItemModelObj.todayText!.value,
                    style: CustomTextStyles.bodyMediumSFProGray80002,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  notificationlistItemModelObj.timeText!.value,
                  style: CustomTextStyles.bodyMediumSFProGray80002,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Obx(
            () => Text(
              notificationlistItemModelObj.alertText!.value,
              style: CustomTextStyles.titleMediumSFProGray80002,
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 295.h,
              margin: EdgeInsets.only(right: 36.h),
              child: Obx(
                () => Text(
                  notificationlistItemModelObj.descriptionText!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeSFProBlack900.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
