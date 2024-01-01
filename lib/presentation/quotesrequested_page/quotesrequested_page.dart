// ignore_for_file: must_be_immutable

import '../quotesrequested_page/widgets/listsection_item_widget.dart';
import 'controller/quotesrequested_controller.dart';
import 'models/listsection_item_model.dart';
import 'models/quotesrequested_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';

class QuotesrequestedPage extends StatelessWidget {
  QuotesrequestedPage({Key? key})
      : super(
          key: key,
        );

  QuotesrequestedController controller =
      Get.put(QuotesrequestedController(QuotesrequestedModel().obs));

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
                      _buildContentSection(),
                      SizedBox(height: 16.v),
                      _buildListSection(),
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
  Widget _buildContentSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillDeeppurple5001,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 88.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_stitching_cut_blouses".tr,
                  style: CustomTextStyles.bodyLargeGray900,
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_price_2000_delivery".tr,
                  style: CustomTextStyles.bodyMediumRobotoGray700,
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillDeeppurple5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "msg_order_id_order_id".tr,
                        style: CustomTextStyles.bodyLargeCabinBlack900_1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_2_items".tr,
                          style: CustomTextStyles.bodyLargeCabinBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "msg_order_status".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "msg_status_change_date".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Divider(),
                SizedBox(height: 15.v),
                SizedBox(
                  width: 213.h,
                  child: Text(
                    "msg_service_type".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Divider(),
                SizedBox(height: 15.v),
                SizedBox(
                  width: 213.h,
                  child: Text(
                    "msg_service_type".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Divider(),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_price_2000_delivery".tr,
                    style: CustomTextStyles.bodyMediumGray700,
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_edit2".tr,
                        margin: EdgeInsets.only(right: 8.h),
                        buttonStyle: CustomButtonStyles.fillGreenTL8,
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOnErrorContainer,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_delete_cancel".tr,
                        margin: EdgeInsets.only(left: 8.h),
                        buttonStyle: CustomButtonStyles.fillBlueGray,
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOnErrorContainer,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListSection() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller
            .quotesrequestedModelObj.value.listsectionItemList.value.length,
        itemBuilder: (context, index) {
          ListsectionItemModel model = controller
              .quotesrequestedModelObj.value.listsectionItemList.value[index];
          return ListsectionItemWidget(
            model,
          );
        },
      ),
    );
  }
}
