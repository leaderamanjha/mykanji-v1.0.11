// ignore_for_file: must_be_immutable

import 'controller/quotesreceived_controller.dart';
import 'models/quotesreceived_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';

class QuotesreceivedPage extends StatelessWidget {
  QuotesreceivedPage({Key? key})
      : super(
          key: key,
        );

  QuotesreceivedController controller =
      Get.put(QuotesreceivedController(QuotesreceivedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildColumn12641653(
                        quotesId: "msg_quotes_id_quotes_id".tr,
                        items: "lbl_2_items".tr,
                        quotesStatus: "msg_quotes_status".tr,
                        quotesCreationDate: "msg_quotes_creation_date".tr,
                        serviceType: "msg_service_type".tr,
                        serviceType1: "msg_service_type".tr,
                        price: "msg_price_2000_delivery".tr,
                      ),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                        text: "lbl_place_order".tr,
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      SizedBox(height: 18.v),
                      _buildColumn1264162516523380285(),
                      SizedBox(height: 16.v),
                      _buildColumn12641653(
                        quotesId: "msg_quotes_id_quotes_id".tr,
                        items: "lbl_2_items".tr,
                        quotesStatus: "msg_quotes_status".tr,
                        quotesCreationDate: "msg_quotes_creation_date".tr,
                        serviceType: "msg_service_type".tr,
                        serviceType1: "msg_service_type".tr,
                        price: "msg_price_2000_delivery".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn1264162516523380285() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_past_quotes_received".tr,
          style: CustomTextStyles.titleSmallBlack900,
        ),
        SizedBox(height: 16.v),
        _buildColumn12641653(
          quotesId: "msg_quotes_id_quotes_id".tr,
          items: "lbl_2_items".tr,
          quotesStatus: "msg_quotes_status".tr,
          quotesCreationDate: "msg_quotes_creation_date".tr,
          serviceType: "msg_service_type".tr,
          serviceType1: "msg_service_type".tr,
          price: "msg_price_2000_delivery".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildColumn12641653({
    required String quotesId,
    required String items,
    required String quotesStatus,
    required String quotesCreationDate,
    required String serviceType,
    required String serviceType1,
    required String price,
  }) {
    return Container(
      width: 380.h,
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
          Padding(
            padding: EdgeInsets.only(right: 98.h),
            child: Row(
              children: [
                Text(
                  quotesId,
                  style: CustomTextStyles.bodyLargeCabinBlack900_1.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    items,
                    style: CustomTextStyles.bodyLargeCabinBlack900_1.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 104.h),
            child: Row(
              children: [
                Text(
                  quotesStatus,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: appTheme.greenA700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    quotesCreationDate,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.greenA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            endIndent: 8.h,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 213.h,
              child: Text(
                serviceType,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray900,
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            endIndent: 8.h,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 213.h,
              child: Text(
                serviceType1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray900,
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            endIndent: 8.h,
          ),
          SizedBox(height: 8.v),
          Text(
            price,
            style: CustomTextStyles.bodyMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ],
      ),
    );
  }
}
