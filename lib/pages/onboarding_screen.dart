// ignore_for_file: prefer_const_constructors

import 'package:findjobapp/theme.dart';
import 'package:findjobapp/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: PageView(
          controller: controller,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            OnboardingPages(),
            OnboardingPages(),
            OnboardingPages(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                dotColor: gray4,
                activeDotColor: primaryBlue,
                spacing: 4,
                dotWidth: 10,
                dotHeight: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
