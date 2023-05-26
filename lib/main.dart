import 'package:flutter/material.dart';
import 'package:coffee_app/get_pages.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Luckin Coffee',
    initialRoute: '/',
    getPages: pages,
  ));
}
