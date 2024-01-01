import 'controller/checkout_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';

class CheckoutPageScreen extends GetWidget<CheckoutPageController> {
  const CheckoutPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 10.v),
                        child: Column(children: [
                          _buildDeliveryDetails(),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 282.h,
                                  margin:
                                      EdgeInsets.only(left: 40.h, right: 57.h),
                                  child: Text("msg_7890_malleswaram".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeSFProGray90005
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 21.v),
                          Divider(color: appTheme.blueGray400),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_delivery_type".tr,
                                  style: CustomTextStyles
                                      .titleLargeSFProGray90005)),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_standard".tr,
                                  style: CustomTextStyles
                                      .bodyLargeSFProGray90005)),
                          SizedBox(height: 25.v),
                          Divider(color: appTheme.blueGray400),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_estimated_delivery".tr,
                                  style: CustomTextStyles
                                      .titleLargeSFProGray90005)),
                          SizedBox(height: 11.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_date".tr,
                                  style: CustomTextStyles
                                      .titleLargeSFProGray9000520)),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_time".tr,
                                  style: CustomTextStyles
                                      .titleLargeSFProGray9000520)),
                          SizedBox(height: 24.v),
                          Divider(color: appTheme.blueGray400),
                          SizedBox(height: 23.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_bill_details".tr,
                                  style: CustomTextStyles
                                      .titleLargeSFProGray90005)),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_total_product_05".tr,
                                  style: CustomTextStyles
                                      .titleMediumSFProGray90005)),
                          SizedBox(height: 7.v),
                          _buildTrousersFrame(
                              labelText: "lbl_mistari_shirt".tr,
                              priceText: "lbl_3_500".tr),
                          SizedBox(height: 10.v),
                          _buildTrousersFrame(
                              labelText: "lbl_kep_trousers".tr,
                              priceText: "lbl_2_589".tr),
                          SizedBox(height: 8.v),
                          _buildTrousersFrame(
                              labelText: "lbl_nawab_shirt".tr,
                              priceText: "lbl_1_899".tr),
                          SizedBox(height: 10.v),
                          _buildTrousersFrame(
                              labelText: "lbl_kep_trousers".tr,
                              priceText: "lbl_3_899".tr),
                          SizedBox(height: 8.v),
                          Divider(color: appTheme.blueGray10002),
                          SizedBox(height: 7.v),
                          _buildTrousersFrame(
                              labelText: "lbl_sub_total".tr,
                              priceText: "lbl_11_887".tr),
                          SizedBox(height: 8.v),
                          Divider(color: appTheme.blueGray10002),
                          SizedBox(height: 8.v),
                          _buildTrousersFrame(
                              labelText: "lbl_delivery_fee".tr,
                              priceText: "lbl_200_00".tr),
                          SizedBox(height: 9.v),
                          Divider(color: appTheme.blueGray10002),
                          SizedBox(height: 7.v),
                          _buildTrousersFrame(
                              labelText: "lbl_gst".tr,
                              priceText: "lbl_1_902_00".tr),
                          SizedBox(height: 8.v),
                          Divider(color: appTheme.blueGray10002),
                          SizedBox(height: 7.v),
                          _buildTrousersFrame(
                              labelText: "lbl_total_price".tr,
                              priceText: "lbl_13_989_00".tr),
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                              text: "lbl_proceed_to_pay".tr,
                              buttonStyle: CustomButtonStyles.fillDeepPurple,
                              buttonTextStyle: theme.textTheme.titleSmall!),
                          SizedBox(height: 26.v),
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
        title: AppbarSubtitleTwo(text: "lbl_checkout".tr),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildDeliveryDetails() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgIconamoonDelivery,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 2.v),
          child: Text("msg_delivery_address".tr,
              style: CustomTextStyles.titleLargeSFProGray90005)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v))
    ]);
  }

  /// Common widget
  Widget _buildTrousersFrame({
    required String labelText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(labelText,
              style: CustomTextStyles.bodyLargeSFProGray90005
                  .copyWith(color: appTheme.gray90005))),
      Text(priceText,
          style: CustomTextStyles.bodyLargeSFProGray90005
              .copyWith(color: appTheme.gray90005))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
