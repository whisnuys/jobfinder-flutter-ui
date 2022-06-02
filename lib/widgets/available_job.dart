// ignore_for_file: prefer_const_constructors

import 'package:findjobapp/theme.dart';
import 'package:flutter/material.dart';

class AvailJobs extends StatefulWidget {
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
  State<AvailJobs> createState() => _AvailJobsState();
}

class _AvailJobsState extends State<AvailJobs> {
  bool isActive = false;

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
                  widget.logo,
                  width: 41,
                  height: 41,
                ),
                Spacer(),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                    child: isActive == true
                        ? Image.asset(
                            'assets/images/saveactive.png',
                            width: 20,
                            height: 24,
                          )
                        : Image.asset(
                            'assets/images/save.png',
                            width: 20,
                            height: 24,
                          ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              widget.title,
              style: heading3,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              widget.location,
              style: descriptionText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.salary,
              style: descriptionText,
            ),
          ],
        ),
      ),
    );
  }
}
