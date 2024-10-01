import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paycoin_kyusung_app/constants/sizes.dart';
import 'package:paycoin_kyusung_app/features/home/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:paycoin_kyusung_app/generated/l10n.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static var routeName = "splash";

  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      context.goNamed(HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Text(
            S.of(context).appName,
            style: const TextStyle(
              fontSize: Sizes.size28,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
