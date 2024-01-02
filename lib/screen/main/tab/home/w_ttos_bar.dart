import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TtosAppBar extends StatefulWidget {
  const TtosAppBar({super.key});

  @override
  State<TtosAppBar> createState() => _TtosAppBarState();
}

class _TtosAppBarState extends State<TtosAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            "$basePath/icon/toss_white.png",
            height: 28,
            opacity: const AlwaysStoppedAnimation(.5),
          ),
          emptyExpanded, //Expanded(child: Container()),
          const Icon(
            Icons.location_pin,
            size: 28,
            color: Colors.grey,
          ),
          width10,
          Tap(
            onTap: (){
              setState(() {
                _showRedDot = !_showRedDot;
              });
            },
            child: Stack(
              children: [
                const Icon(
                  Icons.notifications_rounded,
                  size: 28,
                  color: Colors.grey,
                ),
                if (_showRedDot) Positioned.fill(
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),

                  ),
                ),)
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
