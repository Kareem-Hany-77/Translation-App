import 'dart:async';
import 'package:flutter/material.dart';
import 'package:translation_app/screens/cards_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _controller;
  late Animation<double> _opacity;

  static const _fadeInDuration = Duration(milliseconds: 800);
  static const _fadeOutDuration = Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: _fadeInDuration);
    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();

    _timer = Timer(const Duration(seconds: 2), () async {
      _controller.duration = _fadeOutDuration;
      await _controller.reverse();

      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 10),
          pageBuilder: (context, animation, secondaryAnimation) =>
              CardsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurvedAnimation(parent: animation, curve: Curves.easeIn),
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF7575),
      body: Center(
        child: FadeTransition(
          opacity: _opacity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: ClipRect(
                  child: Transform.scale(
                    scale: 1.0,
                    child: Image.asset(
                      'assets/images/app_icons/app_icons_spain.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const Text(
                'Hola',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20,),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}