import 'package:after_layout/after_layout.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';

// 사용하지 않음 스터디용으로 남겨 둠
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    delay(() {
      Nav.clearAllAndPush(const MainScreen());
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/image/splash/splash.png", width: 192, height: 192,),
    );
  }
}
