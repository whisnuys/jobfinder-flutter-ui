import 'package:flutter/material.dart';
import 'package:findjobapp/theme.dart';

class JobCategory extends StatelessWidget {
  final bool active;
  final String text;
  JobCategory({required this.active, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: active == true ? primaryBlue : gray5,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: genre.copyWith(color: active == true ? Colors.white : gray3),
        ),
      ),
    );
  }
}
