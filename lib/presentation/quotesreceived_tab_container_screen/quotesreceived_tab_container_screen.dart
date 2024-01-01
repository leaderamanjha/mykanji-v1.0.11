import 'controller/quotesreceived_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/productscreen_container_page/productscreen_container_page.dart';
import 'package:mykanji/presentation/quotesreceived_page/quotesreceived_page.dart';
import 'package:mykanji/presentation/quotesrequested_page/quotesrequested_page.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_bottom_bar.dart';

class QuotesreceivedTabContainerScreen
    extends GetWidget<QuotesreceivedTabContainerController> {
  const QuotesreceivedTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: 412.h,
                child: Column(children: [
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillGray50,
                              child: Container(
                                  decoration: AppDecoration.fillGray50,
                                  child: Column(children: [
                                    _buildTabview(),
                                    SizedBox(
                                        height: 911.v,
                                        child: TabBarView(
                                            controller:
                                                controller.tabviewController,
                                            children: [
                                              QuotesreceivedPage(),
                                              QuotesrequestedPage()
                                            ]))
                                  ])))))
                ])),
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
        title: AppbarSubtitleOne(text: "lbl_all_quotes".tr),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
        height: 35.v,
        width: 380.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.deepPurple500,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.gray80001,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
            indicatorColor: appTheme.deepPurple500,
            tabs: [
              Tab(child: Text("lbl_quotes_received".tr)),
              Tab(child: Text("msg_quotes_requested".tr))
            ]));
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
}
