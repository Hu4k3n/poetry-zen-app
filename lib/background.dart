import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Background extends StatefulWidget {
  Background({Key? key}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Lottie.network(
          'https://assets9.lottiefiles.com/packages/lf20_ym8w5cx4.json',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
