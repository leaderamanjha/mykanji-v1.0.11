import '../review_screen/widgets/frame1_item_widget.dart';
import 'controller/review_controller.dart';
import 'models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_rating_bar.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';

class ReviewScreen extends GetWidget<ReviewController> {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: 412.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7.v),
                      Text("msg_order_id_order_id".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 88.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("msg_service_provider".tr,
                                    style: CustomTextStyles
                                        .labelLargeRobotoOnPrimary),
                                SizedBox(height: 4.v),
                                Text("msg_stitching_cut_blouses".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                SizedBox(height: 2.v),
                                Text("msg_price_2000_qty".tr,
                                    style: CustomTextStyles
                                        .bodyMediumRobotoGray700)
                              ])),
                      SizedBox(height: 50.v),
                      Text("lbl_rating".tr, style: theme.textTheme.titleMedium),
                      SizedBox(height: 7.v),
                      CustomRatingBar(
                          alignment: Alignment.center, initialRating: 0),
                      SizedBox(height: 36.v),
                      _buildReviewFrame(),
                      SizedBox(height: 26.v),
                      _buildReviewPhotosFrame(),
                      SizedBox(height: 58.v),
                      CustomElevatedButton(
                          text: "lbl_send_request".tr,
                          margin: EdgeInsets.symmetric(horizontal: 9.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 8.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftGray50,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillDeepPurple,
                          buttonTextStyle: theme.textTheme.titleSmall!),
                      SizedBox(height: 39.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 108.h,
                              child: Divider(color: appTheme.gray90002)))
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
        actions: [
          AppbarSubtitle(
              text: "lbl_review".tr,
              margin: EdgeInsets.fromLTRB(147.h, 17.v, 147.h, 20.v))
        ],
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildReviewFrame() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_review_description".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 7.v),
      CustomTextFormField(
          controller: controller.textFieldController,
          hintText: "lbl_label".tr,
          hintStyle: CustomTextStyles.bodyLargeGray80001,
          textInputAction: TextInputAction.done,
          maxLines: 5,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v))
    ]);
  }

  /// Section Widget
  Widget _buildReviewPhotosFrame() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_review_photos".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      SizedBox(
          height: 161.v,
          child: Obx(() => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount:
                  controller.reviewModelObj.value.frame1ItemList.value.length,
              itemBuilder: (context, index) {
                Frame1ItemModel model =
                    controller.reviewModelObj.value.frame1ItemList.value[index];
                return Frame1ItemWidget(model);
              })))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
