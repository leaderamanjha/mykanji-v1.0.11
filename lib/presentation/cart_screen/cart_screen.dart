import '../cart_screen/widgets/listitem_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/listitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/productscreen_container_page/productscreen_container_page.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_bottom_bar.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 412.h,
                padding: EdgeInsets.all(16.h),
                child: Column(children: [
                  _buildListItem(),
                  Spacer(),
                  _buildAddToCartWith()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_cart".tr),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildListItem() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller.cartModelObj.value.listitemItemList.value.length,
        itemBuilder: (context, index) {
          ListitemItemModel model =
              controller.cartModelObj.value.listitemItemList.value[index];
          return ListitemItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildAddToCartWith() {
    return GestureDetector(
        onTap: () {
          onTapAddToCartWith();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: AppDecoration.outlineBlack900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 135.h,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_11_887".tr,
                                          style: CustomTextStyles
                                              .titleSmallSFProOnErrorContainer),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLine1,
                                          height: 12.v,
                                          width: 1.h,
                                          margin: EdgeInsets.only(
                                              top: 2.v, bottom: 4.v)),
                                      Text("lbl_3_item_s".tr,
                                          style: CustomTextStyles
                                              .titleSmallSFProOnErrorContainer)
                                    ])),
                            Text("msg_charge_applicable".tr,
                                style:
                                    CustomTextStyles.bodySmallOnErrorContainer)
                          ])),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      child: Text("lbl_go_to_checkout".tr,
                          style: CustomTextStyles
                              .titleMediumSFProOnErrorContainerSemiBold))
                ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.productscreenContainerPage;
      case BottomBarEnum.Quote:
        return "/";
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Replies:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.productscreenContainerPage:
        return ProductscreenContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the checkoutPageScreen when the action is triggered.
  onTapAddToCartWith() {
    Get.toNamed(
      AppRoutes.checkoutPageScreen,
    );
  }
}
