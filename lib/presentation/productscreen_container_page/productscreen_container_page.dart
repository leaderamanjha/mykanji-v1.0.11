import '../productscreen_container_page/widgets/productcard_item_widget.dart';
import 'controller/productscreen_container_controller.dart';
import 'models/productcard_item_model.dart';
import 'models/productscreen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ProductscreenContainerPage extends StatelessWidget {
  ProductscreenContainerPage({Key? key}) : super(key: key);

  ProductscreenContainerController controller = Get.put(
      ProductscreenContainerController(ProductscreenContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: 412.h,
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  _buildProductScreen(),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              padding: EdgeInsets.all(16.h),
                              child: Column(children: [
                                CustomSearchView(
                                    controller: controller.searchController,
                                    hintText: "msg_hinted_search_text".tr),
                                SizedBox(height: 16.v),
                                _buildProductCard()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildProductScreen() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.v),
        decoration: AppDecoration.fillGray5001,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(
              height: 24.v,
              leadingWidth: 412.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgIcon,
                  margin: EdgeInsets.fromLTRB(20.h, 4.v, 376.h, 4.v),
                  onTap: () {
                    onTapIcon();
                  })),
          SizedBox(height: 51.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child:
                  Text("lbl_sarees".tr, style: theme.textTheme.headlineMedium)),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildProductCard() {
    return Expanded(
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 259.v,
                crossAxisCount: 2,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.h),
            physics: BouncingScrollPhysics(),
            itemCount: controller.productscreenContainerModelObj.value
                .productcardItemList.value.length,
            itemBuilder: (context, index) {
              ProductcardItemModel model = controller
                  .productscreenContainerModelObj
                  .value
                  .productcardItemList
                  .value[index];
              return ProductcardItemWidget(model, onTapProductCard: () {
                onTapProductCard();
              });
            })));
  }

  onTapProductCard() {}

  /// Navigates to the previous screen.
  onTapIcon() {
    Get.back();
  }
}
