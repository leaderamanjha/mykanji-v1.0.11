import '../controller/orders_controller.dart';
import '../models/orderdetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailslistItemWidget extends StatelessWidget {
  OrderdetailslistItemWidget(
    this.orderdetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailslistItemModel orderdetailslistItemModelObj;

  var controller = Get.find<OrdersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillDeeppurple5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              Obx(
                () => Text(
                  orderdetailslistItemModelObj.orderID!.value,
                  style: CustomTextStyles.bodyLargeCabinBlack900_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    orderdetailslistItemModelObj.itemCount!.value,
                    style: CustomTextStyles.bodyLargeCabinBlack900_1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              Obx(
                () => Text(
                  orderdetailslistItemModelObj.orderStatus!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Obx(
                  () => Text(
                    orderdetailslistItemModelObj.statusChangeDate!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 213.h,
              margin: EdgeInsets.only(right: 46.h),
              child: Obx(
                () => Text(
                  orderdetailslistItemModelObj.serviceDetails!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 23.v),
          Obx(
            () => Text(
              orderdetailslistItemModelObj.priceAndDelivery!.value,
              style: CustomTextStyles.bodyMediumGray700,
            ),
          ),
        ],
      ),
    );
  }
}
