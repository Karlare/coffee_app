import 'package:coffee_app/pages/coupon/index.dart';
import 'package:coffee_app/pages/diningcode/dining_code.dart';
import 'package:coffee_app/pages/login/login_mail.dart';
import 'package:coffee_app/pages/login/login_method.dart';
import 'package:coffee_app/pages/order/order_cancel.dart';
import 'package:coffee_app/pages/order/order_confirm.dart';
import 'package:coffee_app/pages/order/order_detail.dart';
import 'package:coffee_app/pages/order/order_buySuccess.dart';
import 'package:coffee_app/pages/order/order_evaluation.dart';
import 'package:coffee_app/pages/order/order_remark.dart';
import 'package:coffee_app/pages/selfstore/index.dart';
import 'package:coffee_app/pages/storedetail/index.dart';
import 'package:coffee_app/pages/toolbar/index.dart';
import 'package:coffee_app/pages/toolbar/mine/mine.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> pages = [
  // toolbar
  GetPage(name: '/', page: () => Toolbar()),
  GetPage(name: '/mine', page: () => Toolbar()),
  GetPage(name: '/shopping_cart', page: () => Toolbar()),
  GetPage(name: '/menu', page: () => Toolbar()),

  // other
  GetPage(name: '/login_method', page: () => LoginMethod()),
  GetPage(name: '/login_mail', page: () => LoginMail()),
  GetPage(name: '/order_evaluation', page: () => OrderEvaluation()),
  GetPage(name: '/order_confirm', page: () => OrderConfirm()),
  GetPage(name: '/order_remark', page: () => OrderRemark()),
  GetPage(name: '/order_detail', page: () => OrderDetail()),
  GetPage(name: '/order_buySuccess', page: () => BuySuccess()),
  GetPage(name: '/message', page: () => ProfilePage()),
  GetPage(name: '/coupon', page: () => Coupon()),
  GetPage(name: '/cancel', page: () => Cancel()),
  GetPage(name: '/self_store', page: () => SelfStore()),
  GetPage(name: '/store_detail', page: () => StoreDetail()),
  GetPage(name: '/dining_code', page: () => DiningCode()),
];
