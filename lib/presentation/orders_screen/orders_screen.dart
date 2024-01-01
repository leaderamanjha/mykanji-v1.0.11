import '../orders_screen/widgets/orderdetailslist_item_widget.dart';
import 'controller/orders_controller.dart';
import 'models/orderdetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/productscreen_container_page/productscreen_container_page.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_bottom_bar.dart';

class OrdersScreen extends GetWidget<OrdersController> {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration: AppDecoration.fillGray50,
                        child: Container(
                            padding: EdgeInsets.all(24.h),
                            decoration: AppDecoration.fillGray50,
                            child: Column(children: [
                              SizedBox(height: 4.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_ongoing_orders".tr,
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(height: 15.v),
                              _buildRejectedOrdersColumn(
                                  orderId: "msg_order_id_order_id".tr,
                                  itemLabel: "lbl_1_item".tr,
                                  orderStatus: "msg_order_status".tr,
                                  statusChangeDate: "msg_status_change_date".tr,
                                  serviceType: "msg_service_type".tr,
                                  deliveryPrice: "msg_price_2000_delivery".tr,
                                  onTapRejectedOrdersColumn: () {
                                    onTapFrame();
                                  }),
                              SizedBox(height: 27.v),
                              _buildRejectedOrdersFrame(),
                              SizedBox(height: 26.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_delivered_orders".tr,
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(height: 17.v),
                              _buildOrderDetailsList()
                            ]))))),
            bottomNavigationBar: _buildBottomBar()));
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
        title: AppbarSubtitleOne(text: "lbl_my_orders".tr),
        styleType: Style.bgFill_3);
  }

  /// Section Widget
  Widget _buildRejectedOrdersFrame() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_rejected_order".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 16.v),
      _buildRejectedOrdersColumn(
          orderId: "msg_order_id_order_id".tr,
          itemLabel: "lbl_1_item".tr,
          orderStatus: "msg_order_status".tr,
          statusChangeDate: "msg_status_change_date".tr,
          serviceType: "msg_service_type".tr,
          deliveryPrice: "msg_price_2000_delivery".tr,
          onTapRejectedOrdersColumn: () {
            onTapRejectedOrdersColumn();
          })
    ]);
  }

  /// Section Widget
  Widget _buildOrderDetailsList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.v),
              child: SizedBox(
                  width: 324.h,
                  child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.black900.withOpacity(0.05))));
        },
        itemCount: controller
            .ordersModelObj.value.orderdetailslistItemList.value.length,
        itemBuilder: (context, index) {
          OrderdetailslistItemModel model = controller
              .ordersModelObj.value.orderdetailslistItemList.value[index];
          return OrderdetailslistItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildRejectedOrdersColumn({
    required String orderId,
    required String itemLabel,
    required String orderStatus,
    required String statusChangeDate,
    required String serviceType,
    required String deliveryPrice,
    Function? onTapRejectedOrdersColumn,
  }) {
    return GestureDetector(
        onTap: () {
          onTapRejectedOrdersColumn!.call();
        },
        child: Container(
            width: 364.h,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
            decoration: AppDecoration.fillDeeppurple5001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Row(children: [
                    Text(orderId,
                        style: CustomTextStyles.bodyLargeCabinBlack900_1
                            .copyWith(color: appTheme.black900)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(itemLabel,
                            style: CustomTextStyles.bodyLargeCabinBlack900_1
                                .copyWith(color: appTheme.black900)))
                  ]),
                  SizedBox(height: 10.v),
                  Row(children: [
                    Text(orderStatus,
                        style: theme.textTheme.labelLarge!
                            .copyWith(color: appTheme.greenA700)),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(statusChangeDate,
                            style: theme.textTheme.labelLarge!
                                .copyWith(color: appTheme.greenA700)))
                  ]),
                  SizedBox(height: 7.v),
                  Divider(endIndent: 8.h),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: 213.h,
                          margin: EdgeInsets.only(right: 46.h),
                          child: Text(serviceType,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: appTheme.gray900, height: 1.43)))),
                  SizedBox(height: 13.v),
                  Divider(endIndent: 8.h),
                  SizedBox(height: 8.v),
                  Text(deliveryPrice,
                      style: CustomTextStyles.bodyMediumGray700
                          .copyWith(color: appTheme.gray700))
                ])));
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

  /// Navigates to the ongoingOrderOneScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.ongoingOrderOneScreen,
    );
  }

  /// Navigates to the rejectedOrderScreen when the action is triggered.
  onTapRejectedOrdersColumn() {
    Get.toNamed(
      AppRoutes.rejectedOrderScreen,
    );
  }
}
