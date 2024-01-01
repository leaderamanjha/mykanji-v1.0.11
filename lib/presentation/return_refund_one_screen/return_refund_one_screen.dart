import '../return_refund_one_screen/widgets/returnrefundlist_item_widget.dart';
import 'controller/return_refund_one_controller.dart';
import 'models/returnrefundlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';

class ReturnRefundOneScreen extends GetWidget<ReturnRefundOneController> {
  const ReturnRefundOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 10.v),
                        child: Column(children: [
                          Container(
                              decoration: AppDecoration.fillGray50,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_order_id_order_id".tr,
                                        style: theme.textTheme.titleLarge),
                                    SizedBox(height: 27.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 88.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("msg_service_provider".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeRobotoOnPrimary),
                                              SizedBox(height: 4.v),
                                              Text(
                                                  "msg_stitching_cut_blouses"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeGray900),
                                              SizedBox(height: 2.v),
                                              Text("msg_price_2000_qty".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumRobotoGray700)
                                            ])),
                                    SizedBox(height: 48.v),
                                    Text("msg_please_select_reason2".tr,
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 9.v),
                                    _buildReturnRefundList(),
                                    SizedBox(height: 34.v),
                                    _buildUploadProductImages(),
                                    SizedBox(height: 32.v),
                                    CustomElevatedButton(
                                        text: "lbl_send_request".tr,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 9.h),
                                        leftIcon: Container(
                                            margin: EdgeInsets.only(right: 8.h),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowLeftGray50,
                                                height: 18.adaptSize,
                                                width: 18.adaptSize)),
                                        buttonStyle:
                                            CustomButtonStyles.fillDeepPurple,
                                        buttonTextStyle:
                                            theme.textTheme.titleSmall!)
                                  ])),
                          SizedBox(height: 46.v),
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
  Widget _buildReturnRefundList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 15.5.v),
              child: SizedBox(
                  width: 380.h,
                  child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.blueGray100)));
        },
        itemCount: controller.returnRefundOneModelObj.value
            .returnrefundlistItemList.value.length,
        itemBuilder: (context, index) {
          ReturnrefundlistItemModel model = controller.returnRefundOneModelObj
              .value.returnrefundlistItemList.value[index];
          return ReturnrefundlistItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildUploadProductImages() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_upload_product_images".tr, style: theme.textTheme.titleLarge),
      SizedBox(height: 14.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            height: 161.v,
            width: 182.h,
            decoration: AppDecoration.fillDeeppurple5001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.topRight)),
        Container(
            height: 161.v,
            width: 182.h,
            decoration: AppDecoration.fillDeeppurple5001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.topRight))
      ])
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
