

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markopi/helpers/colors.dart';
import 'package:markopi/pages/home/home_screen.dart';
import 'package:markopi/pages/trades/choose_path.dart';
import 'package:markopi/pages/trades/purchases/address/add_address_screen.dart';
import 'package:markopi/pages/trades/purchases/address/address_list_screen.dart';
import 'package:markopi/pages/trades/purchases/courier/courier_screen.dart';
import 'package:markopi/pages/trades/purchases/payment/payment_proof_screen.dart';
import 'package:markopi/pages/trades/purchases/payment/payment_screen.dart';
import 'package:markopi/pages/trades/purchases/payment/payment_uploaded_screen.dart';
import 'package:markopi/pages/trades/purchases/purchase_detail_screen.dart';
import 'package:markopi/pages/trades/sales/manipulate_product/manipulate_product.dart';
import 'package:markopi/route.dart';
import 'package:page_transition/page_transition.dart';

import 'pages/trades/current_products/current_product_screen.dart';
import 'pages/trades/purchases/purchase_screen.dart';
import 'pages/trades/sales/manipulate_product/product_summary.dart';
import 'pages/trades/show_product/show_product_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Markopi",
      home: HomeScreen(),
      onGenerateRoute: _routes(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case AppRoute.HOME_ROUTE:
          screen = HomeScreen();
          break;
        case AppRoute.TRADE_ROUTE:
          screen = ChoosePathScreen();
          break;
        case AppRoute.CURRENT_PRODUCT_ROUTE:
          screen = CurrentProductScreen(isPurchaseMode: arguments['isPurchaseMode'],);
          break;
        case AppRoute.MANIPULATE_PRODUCT_ROUTE:
          screen = ManipulateProductScreen(isEdit: arguments['isEdit'],);
          break;
        case AppRoute.PRODUCT_SUMMARY_ROUTE:
          screen = ProductSummaryScreen();
          break;
        case AppRoute.SHOW_PRODUCT_ROUTE:
          screen = ShowProductScreen(isPurchaseMode: arguments['isPurchaseMode'],);
          break;
        case AppRoute.PURCHASE_ROUTE:
          screen = PurchaseScreen();
          break;
        case AppRoute.PURCHASE_DETAIL_ROUTE:
          screen = PurchaseDetailScreen(hasAddress: arguments['hasAdress'],);
          break;
        case AppRoute.PURCHASE_ADDRESS_LIST_ROUTE:
          screen = PurchaseAddressListScreen(hasAddress: arguments['hasAddress'],hasTwoAddress: arguments['hasTwoAddress'],);
          break;
        case AppRoute.PURCHASE_ADD_ADDRESS_ROUTE:
          screen = PurchaseAddAddressScreen(twoAddress: arguments['twoAddress'],);
          break;
        case AppRoute.PURCHASE_COURIER_ROUTE:
          screen = PurchaseCourierScreen();
          break;
        case AppRoute.PURCHASE_PAYMENT_ROUTE:
          screen = PurchasePaymentScreen();
          break;
        case AppRoute.PURCHASE_PROOF_ROUTE:
          screen = PaymentProofScreen();
          break;
        case AppRoute.PURCHASE_UPLOADED_PROOF_ROUTE:
          screen = PaymentUploadedProofScreen();
          break;
        default:
          return null;
      }
      return PageTransition(child: screen,type: PageTransitionType.rightToLeftWithFade,alignment: Alignment.topCenter,duration: Duration(milliseconds: 300));
    };
  }

}
