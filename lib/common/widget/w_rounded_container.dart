import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backagoundColor;

  const RoundedContainer(
      {required this.child,
      super.key,
      this.radius = 20,
      this.backagoundColor,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: backagoundColor ?? context.appColors.roundedLayoutBackground,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
