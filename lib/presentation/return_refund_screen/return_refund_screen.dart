import '../return_refund_screen/widgets/frame_item_widget.dart';
import 'controller/return_refund_controller.dart';
import 'models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

class ReturnRefundScreen extends GetWidget<ReturnRefundController> {
  const ReturnRefundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 412.h,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillGray50,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildAppBar(),
                            SizedBox(height: 13.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_return_order_rejected".tr,
                                    style: CustomTextStyles.titleLargeRed900)),
                            SizedBox(height: 27.v),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("lbl_reason2".tr,
                                    style: CustomTextStyles.bodyLargeGray900)),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.center,
                                child: Divider(
                                    color: appTheme.blueGray100,
                                    indent: 16.h,
                                    endIndent: 16.h)),
                            SizedBox(height: 32.v),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("msg_order_id_order_id".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 27.v),
                            Padding(
                                padding: EdgeInsets.only(left: 104.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("msg_service_provider".tr,
                                          style: CustomTextStyles
                                              .labelLargeRobotoOnPrimary),
                                      SizedBox(height: 4.v),
                                      Text("msg_stitching_cut_blouses".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray900),
                                      SizedBox(height: 2.v),
                                      Text("msg_price_2000_qty".tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoGray700)
                                    ])),
                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.center,
                                child: Divider(
                                    color: appTheme.blueGray100,
                                    indent: 16.h,
                                    endIndent: 16.h)),
                            SizedBox(height: 33.v),
                            _buildFrame(),
                            SizedBox(height: 35.v),
                            _buildFrame1(),
                            SizedBox(height: 16.v)
                          ])),
                  SizedBox(height: 97.v),
                  SizedBox(
                      width: 108.h, child: Divider(color: appTheme.gray90002))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray50,
            margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitleOne(
            text: "lbl_return_refund".tr, margin: EdgeInsets.only(left: 100.h)),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_you_reason_for_return".tr,
              style: theme.textTheme.titleMedium),
          SizedBox(height: 9.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
              decoration: AppDecoration.fillDeepPurple
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 7.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_quality_issue".tr,
                              style: CustomTextStyles.bodyLargeGray900),
                          SizedBox(height: 2.v),
                          Text("msg_poor_fabric_material".tr,
                              style: CustomTextStyles.bodyMediumRobotoGray700)
                        ])),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(top: 7.v, right: 8.h, bottom: 7.v),
                    child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        child:
                            CustomImageView(imagePath: ImageConstant.imgInbox)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_uploaded_product".tr, style: theme.textTheme.titleLarge),
          SizedBox(height: 14.v),
          SizedBox(
              height: 161.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: controller
                      .returnRefundModelObj.value.frameItemList.value.length,
                  itemBuilder: (context, index) {
                    FrameItemModel model = controller
                        .returnRefundModelObj.value.frameItemList.value[index];
                    return FrameItemWidget(model);
                  })))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
