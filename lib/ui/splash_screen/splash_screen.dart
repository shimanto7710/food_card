import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant.dart';
import '../../routes/app_pages.dart';
import '../../styles/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.toNamed(Routes.HOME);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: SGColors.white,

    );
  }
}
