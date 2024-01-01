import '../controller/quotesrequested_controller.dart';
import '../models/listsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ListsectionItemWidget extends StatelessWidget {
  ListsectionItemWidget(
    this.listsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListsectionItemModel listsectionItemModelObj;

  var controller = Get.find<QuotesrequestedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 88.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillDeeppurple5001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              listsectionItemModelObj.headlineText!.value,
              style: CustomTextStyles.bodyLargeGray90003,
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              listsectionItemModelObj.supportingText!.value,
              style: CustomTextStyles.bodyMediumRobotoGray80001,
            ),
          ),
        ],
      ),
    );
  }
}
