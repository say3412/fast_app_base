import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

class BingButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BingButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text.text.white.size(20).bold.make(),
          Arrow(), // 색상 white으로 수정해 줌
        ],
      ),
    );
  }
}
