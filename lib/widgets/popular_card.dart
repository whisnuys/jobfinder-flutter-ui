// ignore_for_file: prefer_const_constructors

import 'package:findjobapp/pages/detail_page.dart';
import 'package:findjobapp/theme.dart';
import 'package:flutter/material.dart';

class popularCard extends StatelessWidget {
  late final Color cardColor;
  final String iconCard;
  final String salary;
  final String title;
  final String location;
  final List type;

  popularCard({
    required this.cardColor,
    required this.iconCard,
    required this.location,
    required this.salary,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Container(
        width: 240,
        height: 135,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  iconCard,
                  width: 43,
                  height: 43,
                ),
                Text(
                  salary,
                  style: primaryText.copyWith(
                      color: cardColor == primaryBlue
                          ? Colors.white
                          : primaryGray),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              title,
              style: heading3.copyWith(
                  color: cardColor == primaryBlue ? Colors.white : primaryGray),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              location,
              style: primaryText.copyWith(
                  color: cardColor == primaryBlue ? Colors.white : gray3),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  // space between chips
                  spacing: 10,
                  // list of chips
                  children: [
                    for (var item in type)
                      Container(
                        width: 56,
                        height: 15,
                        decoration: BoxDecoration(
                          color:
                              cardColor == primaryBlue ? Colors.white : gray6,
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          item,
                          style: descriptionText.copyWith(color: primaryBlue),
                        )),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
