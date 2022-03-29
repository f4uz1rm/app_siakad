import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final PageController scoll = new PageController();
  String imageUser = "https://picsum.photos/200/300";
  RxBool isIPK = false.obs;
}
