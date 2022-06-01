// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:findjobapp/theme.dart';

class BottomNav extends StatelessWidget {
  final String imageUrl;
  final int menuIndex;

  const BottomNav({required this.imageUrl, required this.menuIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          menuIndex == 1 ? imageUrl + '_active.png' : imageUrl + '.png',
          width: 30,
          height: 30,
        ),
        Spacer()
      ],
    );
  }
}
