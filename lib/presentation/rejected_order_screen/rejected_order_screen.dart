import 'controller/rejected_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_drop_down.dart';

class RejectedOrderScreen extends GetWidget<RejectedOrderController> {
  const RejectedOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        decoration: AppDecoration.fillGray50,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16.v),
                            decoration: AppDecoration.fillGray50,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3.v),
                                  _buildOrderDetails(),
                                  SizedBox(height: 25.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 88.h),
                                      child: Text("lbl_product_name".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  SizedBox(height: 2.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 88.h),
                                      child: Text("msg_price_item_price".tr,
                                          style: CustomTextStyles
                                              .titleSmallCabinGray900)),
                                  SizedBox(height: 24.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Divider(
                                          indent: 16.h, endIndent: 16.h)),
                                  SizedBox(height: 17.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_seller_info".tr,
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 18.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_customer_name".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  SizedBox(height: 16.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Divider(
                                          indent: 16.h, endIndent: 16.h)),
                                  SizedBox(height: 17.v),
                                  _buildDriverInfo(),
                                  SizedBox(height: 31.v),
                                  _buildOrderStatus(),
                                  SizedBox(height: 29.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_reason".tr,
                                          style: CustomTextStyles
                                              .bodyLargeRed900)),
                                  SizedBox(height: 19.v),
                                  _buildPickupAddress(),
                                  _buildExpectedDateAndTime(),
                                  SizedBox(height: 19.v),
                                  _buildFrame4()
                                ])))))));
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
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_rejected_order".tr),
        styleType: Style.bgFill_3);
  }

  /// Section Widget
  Widget _buildOrderDetails() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("msg_order_id_order_id2".tr,
                      style: theme.textTheme.titleMedium),
                  Text("lbl_date".tr, style: theme.textTheme.bodyMedium)
                ])));
  }

  /// Section Widget
  Widget _buildDriverInfo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_driver_info".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 19.v),
          Text("lbl_driver_name".tr, style: theme.textTheme.bodyMedium),
          SizedBox(height: 7.v),
          Text("msg_driver_contact_number".tr,
              style: theme.textTheme.bodyMedium),
          SizedBox(height: 17.v),
          Divider()
        ]));
  }

  /// Section Widget
  Widget _buildOrderStatus() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_order_status".tr,
                  style: theme.textTheme.titleLarge)),
          SizedBox(height: 28.v),
          _buildOrderRejectedState(
              lockImage: ImageConstant.imgLockGreen80001,
              headlineText: "lbl_order_placed".tr,
              dateText: "lbl_date".tr),
          SizedBox(height: 32.v),
          _buildOrderRejectedState(
              lockImage: ImageConstant.imgLockRed900,
              headlineText: "lbl_order_rejected".tr,
              dateText: "lbl_date".tr)
        ]));
  }

  /// Section Widget
  Widget _buildPickupAddress() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Divider(),
              SizedBox(height: 26.v),
              Text("lbl_pickup_address".tr,
                  style: CustomTextStyles.titleMediumGray900),
              SizedBox(height: 8.v),
              Container(
                  width: 350.h,
                  margin: EdgeInsets.only(right: 29.h),
                  child: Text("msg_48_church_st_haridevpur".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.43)))
            ]));
  }

  /// Section Widget
  Widget _buildExpectedDateAndTime() {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray50,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 3.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("msg_expected_date_and".tr,
                  style: CustomTextStyles.titleMediumGray900)),
          SizedBox(height: 12.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_12_09_23".tr,
                            style: CustomTextStyles.bodyLargeInterBluegray500)),
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 20.adaptSize,
                        width: 20.adaptSize)
                  ])),
          SizedBox(height: 12.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              hintText: "msg_12_30pm_03_30pm".tr,
              items: controller
                  .rejectedOrderModelObj.value.dropdownItemList.value,
              onChanged: (value) {
                controller.onSelected(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_payment_details".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 16.v),
          Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.fillDeeppurple5001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildPaymentDetails(
                    serviceChargeText: "msg_total_order_value".tr,
                    priceText: "lbl_249_99".tr),
                SizedBox(height: 18.v),
                _buildPaymentDetails(
                    serviceChargeText: "lbl_service_charge".tr,
                    priceText: "lbl_249_99".tr),
                SizedBox(height: 17.v),
                _buildPaymentDetails(
                    serviceChargeText: "lbl_delivery_charge".tr,
                    priceText: "lbl_49_99".tr),
                SizedBox(height: 17.v),
                _buildPaymentDetails(
                    serviceChargeText: "lbl_gst2".tr,
                    priceText: "lbl_249_99".tr),
                SizedBox(height: 18.v),
                _buildPaymentDetails(
                    serviceChargeText: "msg_total_amount_payable".tr,
                    priceText: "lbl_299_98".tr)
              ]))
        ]));
  }

  /// Common widget
  Widget _buildOrderRejectedState({
    required String lockImage,
    required String headlineText,
    required String dateText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: lockImage, height: 24.adaptSize, width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 3.v),
          child: Text(headlineText,
              style: CustomTextStyles.bodyLargeRed900
                  .copyWith(color: appTheme.red900))),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(dateText,
              style: CustomTextStyles.bodyLargeRed900
                  .copyWith(color: appTheme.red900)))
    ]);
  }

  /// Common widget
  Widget _buildPaymentDetails({
    required String serviceChargeText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(serviceChargeText,
              style: CustomTextStyles.bodyLargeCabinGray900
                  .copyWith(color: appTheme.gray900))),
      Padding(
          padding: EdgeInsets.only(bottom: 5.v),
          child: Text(priceText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray900)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
