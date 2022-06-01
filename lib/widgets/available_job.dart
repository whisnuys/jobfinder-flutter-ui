// ignore_for_file: prefer_const_constructors

import 'package:findjobapp/theme.dart';
import 'package:flutter/material.dart';

class AvailJobs extends StatelessWidget {
  final String logo;
  final String title;
  final String location;
  final String salary;

  AvailJobs({
    required this.logo,
    required this.title,
    required this.location,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Container(
        width: 120,
        height: 127,
        padding: EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  logo,
                  width: 41,
                  height: 41,
                ),
                Spacer(),
                Image.asset(
                  'assets/images/save.png',
                  width: 12,
                  height: 16,
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              title,
              style: heading3,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              location,
              style: descriptionText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              salary,
              style: descriptionText,
            ),
          ],
        ),
      ),
    );
  }
}
