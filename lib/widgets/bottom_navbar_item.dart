// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:findjobapp/theme.dart';

class BottomNav extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNav({required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          isActive ? imageUrl + '_active.png' : imageUrl + '.png',
          width: 30,
          height: 30,
        ),
        Spacer()
      ],
    );
  }
}
