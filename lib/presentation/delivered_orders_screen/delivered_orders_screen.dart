import 'controller/delivered_orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/core/utils/validation_functions.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DeliveredOrdersScreen extends GetWidget<DeliveredOrdersController> {
  DeliveredOrdersScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        decoration: AppDecoration.fillGray50,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16.v),
                            decoration: AppDecoration.fillGray50,
                            child: Column(children: [
                              SizedBox(height: 3.v),
                              _buildOrderDetails(),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 88.h),
                                      child: Text("lbl_product_name".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SizedBox(height: 2.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 88.h),
                                      child: Text("msg_price_item_price".tr,
                                          style: CustomTextStyles
                                              .titleSmallCabinGray900))),
                              SizedBox(height: 24.v),
                              Divider(indent: 16.h, endIndent: 16.h),
                              SizedBox(height: 17.v),
                              _buildSellerInfo(),
                              SizedBox(height: 17.v),
                              _buildDriverInfo(),
                              SizedBox(height: 31.v),
                              _buildOrder(),
                              SizedBox(height: 30.v),
                              _buildPickupAddress(),
                              SizedBox(height: 19.v),
                              _buildPaymentDetailsColumn(),
                              SizedBox(height: 16.v),
                              _buildActionButtons()
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
        title: AppbarSubtitleOne(text: "msg_delivered_orders".tr),
        styleType: Style.bgFill_3);
  }

  /// Section Widget
  Widget _buildOrderDetails() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_order_id_order_id2".tr, style: theme.textTheme.titleMedium),
          Text("lbl_date".tr, style: theme.textTheme.bodyMedium)
        ]));
  }

  /// Section Widget
  Widget _buildSellerInfo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_seller_info".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 18.v),
          CustomTextFormField(
              controller: controller.nameController,
              hintText: "lbl_customer_name".tr,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.underLineBlack,
              filled: false)
        ]));
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
  Widget _buildOrder() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_order_status".tr,
                  style: theme.textTheme.titleLarge)),
          SizedBox(height: 30.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: _buildOrderDelivered(
                  headline: "lbl_order_placed".tr, headline1: "lbl_date".tr)),
          SizedBox(height: 34.v),
          _buildOrderInTransit(
              headlineText: "msg_order_accepted_rejected".tr,
              dateText: "lbl_date".tr),
          SizedBox(height: 32.v),
          _buildOrderInTransit(
              headlineText: "msg_order_in_transit".tr, dateText: "lbl_date".tr),
          SizedBox(height: 33.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: _buildOrderDelivered(
                  headline: "msg_order_delivered".tr, headline1: "lbl_date".tr))
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
  Widget _buildPaymentDetailsColumn() {
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

  /// Section Widget
  Widget _buildActionButtons() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_add_review".tr,
                  margin: EdgeInsets.only(right: 12.h),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: theme.textTheme.titleSmall!)),
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_return_refund2".tr,
                  margin: EdgeInsets.only(left: 12.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: theme.textTheme.titleSmall!))
        ]));
  }

  /// Common widget
  Widget _buildOrderInTransit({
    required String headlineText,
    required String dateText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgLockGreen80001,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 2.v),
          child: Text(headlineText,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.green800))),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(dateText,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.green800)))
    ]);
  }

  /// Common widget
  Widget _buildOrderDelivered({
    required String headline,
    required String headline1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgIconGreen80001,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(headline,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.green800))),
      Spacer(),
      Text(headline1,
          style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.green800))
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
