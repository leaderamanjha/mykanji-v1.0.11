import '../notification_screen/widgets/notificationlist_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.h, right: 24.h, bottom: 10.v),
                        child: Column(children: [
                          _buildNotificationList(),
                          SizedBox(height: 39.v),
                          SizedBox(
                              width: 108.h,
                              child: Divider(color: appTheme.gray90002))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIcon,
            margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_notification".tr),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildNotificationList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: controller
            .notificationModelObj.value.notificationlistItemList.value.length,
        itemBuilder: (context, index) {
          NotificationlistItemModel model = controller
              .notificationModelObj.value.notificationlistItemList.value[index];
          return NotificationlistItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
