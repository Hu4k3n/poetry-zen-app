import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Landscape extends StatefulWidget {
  Landscape({Key? key}) : super(key: key);

  @override
  State<Landscape> createState() => _LandscapeState();
}

class _LandscapeState extends State<Landscape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_y5ctqybu.json',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
