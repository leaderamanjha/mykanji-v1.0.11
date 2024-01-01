import '../controller/home_controller.dart';
import '../models/productlisting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistingItemWidget extends StatelessWidget {
  ProductlistingItemWidget(
    this.productlistingItemModelObj, {
    Key? key,
    this.onTapProductListing,
    this.onTapTxtTitle,
    this.onTapImgImage,
  }) : super(
          key: key,
        );

  ProductlistingItemModel productlistingItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapProductListing;

  VoidCallback? onTapTxtTitle;

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductListing!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapTxtTitle!.call();
                    },
                    child: Obx(
                      () => Text(
                        productlistingItemModelObj.title!.value,
                        style: CustomTextStyles.titleMediumCenturyGothic,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 154.h,
                    child: Obx(
                      () => Text(
                        productlistingItemModelObj.description!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumCenturyGothicBlack900
                            .copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: productlistingItemModelObj.image!.value,
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 8.v),
                onTap: () {
                  onTapImgImage!.call();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
