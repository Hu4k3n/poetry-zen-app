import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:holding_gesture/holding_gesture.dart';

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
    return Container(
        child: GestureDetector(
      child: Lottie.network(
        'https://assets7.lottiefiles.com/packages/lf20_zuminnax.json',
        repeat: true,
        controller: _holdButtonController,
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
    ));
  }
}
