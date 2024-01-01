import 'package:mykanji/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:mykanji/presentation/sign_up_one_screen/binding/sign_up_one_binding.dart';
import 'package:mykanji/presentation/splash_screen/splash_screen.dart';
import 'package:mykanji/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mykanji/presentation/signupotp_screen/signupotp_screen.dart';
import 'package:mykanji/presentation/signupotp_screen/binding/signupotp_binding.dart';
import 'package:mykanji/presentation/logintwo_screen/logintwo_screen.dart';
import 'package:mykanji/presentation/logintwo_screen/binding/logintwo_binding.dart';
import 'package:mykanji/presentation/loginwithnumber_screen/loginwithnumber_screen.dart';
import 'package:mykanji/presentation/loginwithnumber_screen/binding/loginwithnumber_binding.dart';
import 'package:mykanji/presentation/loginotp_screen/loginotp_screen.dart';
import 'package:mykanji/presentation/loginotp_screen/binding/loginotp_binding.dart';
import 'package:mykanji/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:mykanji/presentation/forgotpassword_screen/binding/forgotpassword_binding.dart';
import 'package:mykanji/presentation/forgetpasswordotp_screen/forgetpasswordotp_screen.dart';
import 'package:mykanji/presentation/forgetpasswordotp_screen/binding/forgetpasswordotp_binding.dart';
import 'package:mykanji/presentation/resetpassword_screen/resetpassword_screen.dart';
import 'package:mykanji/presentation/resetpassword_screen/binding/resetpassword_binding.dart';
import 'package:mykanji/presentation/home_screen/home_screen.dart';
import 'package:mykanji/presentation/home_screen/binding/home_binding.dart';
import 'package:mykanji/presentation/shopingcategory_tab_container_screen/shopingcategory_tab_container_screen.dart';
import 'package:mykanji/presentation/shopingcategory_tab_container_screen/binding/shopingcategory_tab_container_binding.dart';
import 'package:mykanji/presentation/search_screen/search_screen.dart';
import 'package:mykanji/presentation/search_screen/binding/search_binding.dart';
import 'package:mykanji/presentation/productscreen_container1_screen/productscreen_container1_screen.dart';
import 'package:mykanji/presentation/productscreen_container1_screen/binding/productscreen_container1_binding.dart';
import 'package:mykanji/presentation/one_screen/one_screen.dart';
import 'package:mykanji/presentation/one_screen/binding/one_binding.dart';
import 'package:mykanji/presentation/report_screen/report_screen.dart';
import 'package:mykanji/presentation/report_screen/binding/report_binding.dart';
import 'package:mykanji/presentation/quotesreceived_tab_container_screen/quotesreceived_tab_container_screen.dart';
import 'package:mykanji/presentation/quotesreceived_tab_container_screen/binding/quotesreceived_tab_container_binding.dart';
import 'package:mykanji/presentation/cart_screen/cart_screen.dart';
import 'package:mykanji/presentation/cart_screen/binding/cart_binding.dart';
import 'package:mykanji/presentation/checkout_page_screen/checkout_page_screen.dart';
import 'package:mykanji/presentation/checkout_page_screen/binding/checkout_page_binding.dart';
import 'package:mykanji/presentation/notification_screen/notification_screen.dart';
import 'package:mykanji/presentation/notification_screen/binding/notification_binding.dart';
import 'package:mykanji/presentation/ongoing_order_one_screen/ongoing_order_one_screen.dart';
import 'package:mykanji/presentation/ongoing_order_one_screen/binding/ongoing_order_one_binding.dart';
import 'package:mykanji/presentation/rejected_order_screen/rejected_order_screen.dart';
import 'package:mykanji/presentation/rejected_order_screen/binding/rejected_order_binding.dart';
import 'package:mykanji/presentation/return_refund_screen/return_refund_screen.dart';
import 'package:mykanji/presentation/return_refund_screen/binding/return_refund_binding.dart';
import 'package:mykanji/presentation/orders_screen/orders_screen.dart';
import 'package:mykanji/presentation/orders_screen/binding/orders_binding.dart';
import 'package:mykanji/presentation/delivered_orders_screen/delivered_orders_screen.dart';
import 'package:mykanji/presentation/delivered_orders_screen/binding/delivered_orders_binding.dart';
import 'package:mykanji/presentation/review_screen/review_screen.dart';
import 'package:mykanji/presentation/review_screen/binding/review_binding.dart';
import 'package:mykanji/presentation/return_refund_one_screen/return_refund_one_screen.dart';
import 'package:mykanji/presentation/return_refund_one_screen/binding/return_refund_one_binding.dart';
import 'package:mykanji/presentation/ongoing_order_screen/ongoing_order_screen.dart';
import 'package:mykanji/presentation/ongoing_order_screen/binding/ongoing_order_binding.dart';
import 'package:mykanji/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mykanji/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String signupotpScreen = '/signupotp_screen';

  static const String logintwoScreen = '/logintwo_screen';

  static const String loginwithnumberScreen = '/loginwithnumber_screen';

  static const String loginotpScreen = '/loginotp_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String forgetpasswordotpScreen = '/forgetpasswordotp_screen';

  static const String resetpasswordScreen = '/resetpassword_screen';

  static const String homeScreen = '/home_screen';

  static const String shopingcategoryPage = '/shopingcategory_page';

  static const String shopingcategoryTabContainerScreen =
      '/shopingcategory_tab_container_screen';

  static const String searchScreen = '/search_screen';

  static const String productscreenContainerPage =
      '/productscreen_container_page';

  static const String productscreenContainer1Screen =
      '/productscreen_container1_screen';

  static const String oneScreen = '/one_screen';

  static const String reportScreen = '/report_screen';

  static const String quotesreceivedPage = '/quotesreceived_page';

  static const String quotesreceivedTabContainerScreen =
      '/quotesreceived_tab_container_screen';

  static const String cartScreen = '/cart_screen';

  static const String checkoutPageScreen = '/checkout_page_screen';

  static const String quotesrequestedPage = '/quotesrequested_page';

  static const String notificationScreen = '/notification_screen';

  static const String ongoingOrderOneScreen = '/ongoing_order_one_screen';

  static const String rejectedOrderScreen = '/rejected_order_screen';

  static const String returnRefundScreen = '/return_refund_screen';

  static const String ordersScreen = '/orders_screen';

  static const String deliveredOrdersScreen = '/delivered_orders_screen';

  static const String reviewScreen = '/review_screen';

  static const String returnRefundOneScreen = '/return_refund_one_screen';

  static const String ongoingOrderScreen = '/ongoing_order_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpOneScreen,
      page: () => SignUpOneScreen(),
      bindings: [
        SignUpOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signupotpScreen,
      page: () => SignupotpScreen(),
      bindings: [
        SignupotpBinding(),
      ],
    ),
    GetPage(
      name: logintwoScreen,
      page: () => LogintwoScreen(),
      bindings: [
        LogintwoBinding(),
      ],
    ),
    GetPage(
      name: loginwithnumberScreen,
      page: () => LoginwithnumberScreen(),
      bindings: [
        LoginwithnumberBinding(),
      ],
    ),
    GetPage(
      name: loginotpScreen,
      page: () => LoginotpScreen(),
      bindings: [
        LoginotpBinding(),
      ],
    ),
    GetPage(
      name: forgotpasswordScreen,
      page: () => ForgotpasswordScreen(),
      bindings: [
        ForgotpasswordBinding(),
      ],
    ),
    GetPage(
      name: forgetpasswordotpScreen,
      page: () => ForgetpasswordotpScreen(),
      bindings: [
        ForgetpasswordotpBinding(),
      ],
    ),
    GetPage(
      name: resetpasswordScreen,
      page: () => ResetpasswordScreen(),
      bindings: [
        ResetpasswordBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: shopingcategoryTabContainerScreen,
      page: () => ShopingcategoryTabContainerScreen(),
      bindings: [
        ShopingcategoryTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: productscreenContainer1Screen,
      page: () => ProductscreenContainer1Screen(),
      bindings: [
        ProductscreenContainer1Binding(),
      ],
    ),
    GetPage(
      name: oneScreen,
      page: () => OneScreen(),
      bindings: [
        OneBinding(),
      ],
    ),
    GetPage(
      name: reportScreen,
      page: () => ReportScreen(),
      bindings: [
        ReportBinding(),
      ],
    ),
    GetPage(
      name: quotesreceivedTabContainerScreen,
      page: () => QuotesreceivedTabContainerScreen(),
      bindings: [
        QuotesreceivedTabContainerBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: checkoutPageScreen,
      page: () => CheckoutPageScreen(),
      bindings: [
        CheckoutPageBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: ongoingOrderOneScreen,
      page: () => OngoingOrderOneScreen(),
      bindings: [
        OngoingOrderOneBinding(),
      ],
    ),
    GetPage(
      name: rejectedOrderScreen,
      page: () => RejectedOrderScreen(),
      bindings: [
        RejectedOrderBinding(),
      ],
    ),
    GetPage(
      name: returnRefundScreen,
      page: () => ReturnRefundScreen(),
      bindings: [
        ReturnRefundBinding(),
      ],
    ),
    GetPage(
      name: ordersScreen,
      page: () => OrdersScreen(),
      bindings: [
        OrdersBinding(),
      ],
    ),
    GetPage(
      name: deliveredOrdersScreen,
      page: () => DeliveredOrdersScreen(),
      bindings: [
        DeliveredOrdersBinding(),
      ],
    ),
    GetPage(
      name: reviewScreen,
      page: () => ReviewScreen(),
      bindings: [
        ReviewBinding(),
      ],
    ),
    GetPage(
      name: returnRefundOneScreen,
      page: () => ReturnRefundOneScreen(),
      bindings: [
        ReturnRefundOneBinding(),
      ],
    ),
    GetPage(
      name: ongoingOrderScreen,
      page: () => OngoingOrderScreen(),
      bindings: [
        OngoingOrderBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpOneScreen(),
      bindings: [
        SignUpOneBinding(),
      ],
    )
  ];
}
