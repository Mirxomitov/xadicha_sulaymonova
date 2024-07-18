import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xadicha_sulaymonova/presentation/main/main.dart';

import '../../utils/assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this);
    _navigateToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final animWidth = MediaQuery.sizeOf(context).width * 0.8;

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Lottie.asset(
          repeat: false,
          Assets.animation,
          height: animWidth,
          width: animWidth,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Main()));
  }
}