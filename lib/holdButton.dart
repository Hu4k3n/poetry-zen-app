import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:holding_gesture/holding_gesture.dart';
import 'package:avatar_glow/avatar_glow.dart';

class HoldButton extends StatefulWidget {
  HoldButton({Key? key}) : super(key: key);

  @override
  State<HoldButton> createState() => _HoldButtonState();
}

class _HoldButtonState extends State<HoldButton> with TickerProviderStateMixin {
  late AnimationController _holdButtonController;
  @override
  void initState() {
    super.initState();
    _holdButtonController = AnimationController(
        vsync: this, duration: Duration(seconds: 1, milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
        endRadius: 90,
        glowColor: Color.fromRGBO(130, 56, 91, 1),
        child: Container(
            child: GestureDetector(
          child: Container(
            // color: Colors.amber,
            child: Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_zuminnax.json',
              repeat: true,
              controller: _holdButtonController,
              fit: BoxFit.fill,
            ),
          ),
          onTapDown: (_) {
            _holdButtonController.repeat(reverse: false);
          },
          onTapUp: (_) {
            _holdButtonController.reverse();
          },
          onTapCancel: () {
            _holdButtonController.reverse();
          },
        )));
  }
}
