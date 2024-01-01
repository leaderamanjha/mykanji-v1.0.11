import '../ongoing_order_screen/widgets/frame2_item_widget.dart';
import 'controller/ongoing_order_controller.dart';
import 'models/frame2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_drop_down.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';

class OngoingOrderScreen extends GetWidget<OngoingOrderController> {
  const OngoingOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 13.v),
                    child: _buildScreenContent()))));
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
        title: AppbarSubtitleOne(text: "msg_return_refund_order".tr),
        styleType: Style.bgFill_3);
  }

  /// Section Widget
  Widget _buildPickupAddressFrame() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text("lbl_pickup_address".tr,
                style: CustomTextStyles.titleMediumGray900)),
        CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 24.adaptSize,
            width: 24.adaptSize)
      ]),
      SizedBox(height: 8.v),
      Container(
          width: 350.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text("msg_48_church_st_haridevpur".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(height: 1.43)))
    ]);
  }

  /// Section Widget
  Widget _buildReasonForReturnFrame() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_reason_for_return".tr, style: theme.textTheme.titleMedium),
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
                CustomImageView(
                    imagePath: ImageConstant.imgInboxGray90004,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(top: 7.v, right: 8.h, bottom: 7.v))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildOrderColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("msg_current_order_status".tr,
                  style: theme.textTheme.titleLarge)),
          SizedBox(height: 28.v),
          _buildOrderReadyForRow(
              headlineText: "msg_return_order_accepted".tr,
              dateText: "lbl_date".tr),
          SizedBox(height: 32.v),
          _buildOrderReadyForRow(
              headlineText: "msg_order_ready_for".tr, dateText: "lbl_date".tr),
          SizedBox(height: 32.v),
          _buildOrderReadyForRow(
              headlineText: "msg_order_is_picked_up".tr,
              dateText: "lbl_date".tr),
          SizedBox(height: 32.v),
          _buildOrderReadyForRow(
              headlineText: "msg_order_delivered".tr, dateText: "lbl_date".tr)
        ]));
  }

  /// Section Widget
  Widget _buildUploadedProductFrame() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_uploaded_product".tr,
              style: CustomTextStyles.bodyLargeCabinBlack900),
          SizedBox(height: 15.v),
          SizedBox(
              height: 161.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: controller
                      .ongoingOrderModelObj.value.frame2ItemList.value.length,
                  itemBuilder: (context, index) {
                    Frame2ItemModel model = controller
                        .ongoingOrderModelObj.value.frame2ItemList.value[index];
                    return Frame2ItemWidget(model);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildScreenContent() {
    return Container(
        margin: EdgeInsets.only(bottom: 5.v),
        decoration: AppDecoration.fillGray50,
        child: Column(children: [
          Text("msg_return_order_accepted".tr,
              style: CustomTextStyles.titleLargeGreen900),
          SizedBox(height: 28.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("msg_order_id_order_id2".tr,
                        style: theme.textTheme.titleMedium),
                    Text("lbl_date".tr, style: theme.textTheme.bodyMedium)
                  ])),
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
                      style: CustomTextStyles.titleSmallCabinGray900))),
          SizedBox(height: 8.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              decoration: AppDecoration.fillGray50,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Divider(),
                    SizedBox(height: 23.v),
                    _buildPickupAddressFrame()
                  ])),
          Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.fillGray50,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_select_time".tr,
                            style: CustomTextStyles.titleMediumGray900)),
                    SizedBox(height: 13.v),
                    _buildInput(dynamicText: "lbl_date".tr),
                    SizedBox(height: 12.v),
                    CustomDropDown(
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdown,
                                height: 20.adaptSize,
                                width: 20.adaptSize)),
                        hintText: "lbl_select_time2".tr,
                        items: controller
                            .ongoingOrderModelObj.value.dropdownItemList.value,
                        onChanged: (value) {
                          controller.onSelected(value);
                        })
                  ])),
          SizedBox(height: 18.v),
          _buildReasonForReturnFrame(),
          SizedBox(height: 32.v),
          _buildOrderColumn(),
          SizedBox(height: 46.v),
          _buildUploadedProductFrame(),
          SizedBox(height: 16.v),
          CustomElevatedButton(
              text: "lbl_submit".tr,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              buttonStyle: CustomButtonStyles.fillBlueGray,
              buttonTextStyle: theme.textTheme.titleSmall!),
          Container(
              decoration: AppDecoration.fillGray50,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(height: 16.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomDropDown(
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 10.v, 24.h, 10.v),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowdownOnerrorcontainer,
                                height: 20.adaptSize,
                                width: 20.adaptSize)),
                        hintText: "msg_view_past_order".tr,
                        items: controller.ongoingOrderModelObj.value
                            .dropdownItemList1.value,
                        borderDecoration: DropDownStyleHelper.fillDeepPurple,
                        fillColor: appTheme.deepPurple500,
                        onChanged: (value) {
                          controller.onSelected1(value);
                        })),
                SizedBox(height: 16.v),
                Divider(indent: 16.h, endIndent: 16.h),
                SizedBox(height: 15.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_seller_info".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium))),
                SizedBox(height: 56.v),
                Text("lbl_customer_name".tr, style: theme.textTheme.bodyMedium),
                SizedBox(height: 92.v),
                Divider(indent: 16.h, endIndent: 16.h),
                SizedBox(height: 108.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_driver_info".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium))),
                SizedBox(height: 148.v),
                Text("lbl_driver_name".tr, style: theme.textTheme.bodyMedium),
                SizedBox(height: 174.v),
                Text("msg_driver_contact_number".tr,
                    style: theme.textTheme.bodyMedium),
                SizedBox(height: 210.v),
                Divider(indent: 16.h, endIndent: 16.h),
                SizedBox(height: 242.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("msg_current_order_status".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge))),
                SizedBox(height: 298.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildStateLayer1(
                        headline: "lbl_order_placed".tr,
                        headline1: "lbl_date".tr)),
                SizedBox(height: 354.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildStateLayer1(
                        headline: "msg_order_accepted_rejected".tr,
                        headline1: "lbl_date".tr)),
                SizedBox(height: 410.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildStateLayer1(
                        headline: "msg_order_in_transit".tr,
                        headline1: "lbl_date".tr)),
                SizedBox(height: 466.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildStateLayer1(
                        headline: "msg_order_delivered".tr,
                        headline1: "lbl_date".tr)),
                SizedBox(height: 518.v),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    decoration: AppDecoration.fillGray50,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.v),
                          Divider(),
                          SizedBox(height: 558.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_pickup_address".tr,
                                  style: CustomTextStyles.titleMediumGray900)),
                          SizedBox(height: 590.v),
                          Text("msg_48_church_st_haridevpur".tr,
                              style: theme.textTheme.bodyMedium)
                        ])),
                SizedBox(height: 646.v),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    decoration: AppDecoration.fillGray50,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_expected_date_and".tr,
                                  style: CustomTextStyles.titleMediumGray900)),
                          SizedBox(height: 698.v),
                          _buildInput(dynamicText: "lbl_12_09_23".tr),
                          SizedBox(height: 754.v),
                          CustomDropDown(
                              hintText: "msg_12_30pm_03_30pm".tr,
                              items: controller.ongoingOrderModelObj.value
                                  .dropdownItemList2.value,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 5.v),
                              borderDecoration:
                                  DropDownStyleHelper.outlineBlueGray1,
                              onChanged: (value) {
                                controller.onSelected2(value);
                              })
                        ])),
                SizedBox(height: 830.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_payment_details".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium))),
                SizedBox(height: 870.v),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    decoration: AppDecoration.fillDeeppurple5001,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.v),
                          _buildFrame(
                              serviceCharge: "msg_total_order_value".tr,
                              price: "lbl_249_99".tr),
                          SizedBox(height: SizeUtils.height),
                          _buildFrame(
                              serviceCharge: "lbl_service_charge".tr,
                              price: "lbl_249_99".tr),
                          SizedBox(height: 966.v),
                          _buildFrame(
                              serviceCharge: "lbl_delivery_charge".tr,
                              price: "lbl_49_99".tr),
                          SizedBox(height: 1006.v),
                          _buildFrame(
                              serviceCharge: "lbl_gst2".tr,
                              price: "lbl_249_99".tr),
                          SizedBox(height: 1046.v),
                          _buildFrame(
                              serviceCharge: "msg_total_amount_payable".tr,
                              price: "lbl_299_98".tr)
                        ]))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildOrderReadyForRow({
    required String headlineText,
    required String dateText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgLockGreen80001,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 3.v),
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
  Widget _buildStateLayer1({
    required String headline,
    required String headline1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgIconGreen80001, height: 1.v, width: 24.h),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(headline,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.green800))),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(headline1,
              textAlign: TextAlign.right,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.green800)))
    ]);
  }

  /// Common widget
  Widget _buildInput({required String dynamicText}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        decoration: AppDecoration.outlineBlueGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v),
              child: Text(dynamicText,
                  style: CustomTextStyles.bodyLargeInterBluegray500
                      .copyWith(color: appTheme.blueGray500))),
          CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 1.v,
              width: 20.h,
              margin: EdgeInsets.only(top: 10.v))
        ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String serviceCharge,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(serviceCharge,
          style: CustomTextStyles.bodyLargeCabinGray900
              .copyWith(color: appTheme.gray900)),
      Text(price,
          style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
