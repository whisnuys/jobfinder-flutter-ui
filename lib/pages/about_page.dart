// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:findjobapp/widgets/job_category.dart';
import 'package:flutter/material.dart';
import 'package:findjobapp/theme.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List requirements = [
    "Bachelor's degree in computer science, business, or a related field",
    "5-8 years of project management and related experience",
    "Project Management Professional (PMP) certification preferred",
    "Proven ability to solve problems creatively",
    "Strong familiarity with project management software tools, methodologies, and best practices",
    "Experience seeing projects through the full life cycle",
    "Excellent analytical skills",
    "Strong interpersonal skills and extremely resourceful",
    "Proven ability to complete projects according to outlined scope, budget, and timeline"
  ];
  double heightfloatbutton = 55;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
// NOTE: Thumbnail
              Image.asset(
                'assets/images/header.png',
                width: MediaQuery.of(context).size.width,
                height: 280,
                fit: BoxFit.cover,
              ),
// NOTE: Content Wrapper
              ListView(
                children: [
                  SizedBox(
                    height: 249,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: [
// NOTE: Header Content
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/tokped.png',
                                width: 74,
                                height: 74,
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senior Project Manager',
                                    style: heading2,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Tokopedia - Jakarta, ID',
                                    style: primaryText,
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Wrap(
                                    spacing: 7,
                                    children: [
                                      JobCategory(
                                        active: true,
                                        text: 'Fulltime',
                                      ),
                                      JobCategory(
                                        active: true,
                                        text: 'Remote',
                                      ),
                                      JobCategory(
                                        active: true,
                                        text: 'Senior',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
// NOTE: Tab Bar
                          Container(
                            width: double.infinity,
                            height: 46,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFEBEBEB),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TabBar(
                              indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              labelColor: primaryBlue,
                              unselectedLabelColor: gray3,
                              tabs: [
                                Tab(
                                  text: 'Description',
                                ),
                                Tab(
                                  text: 'Company',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
// NOTE: Tab Bar Content
                          SizedBox(
                            height: 380,
                            child: TabBarView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Job Description',
                                      style: heading2.copyWith(fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Project managers play the lead role in planning, executing, monitoring, controlling, and closing out projects. They are accountable for the entire project scope, the project team and resources, the project budget, and the success or failure of the project.',
                                      style: primaryText,
                                    ),
                                    SizedBox(
                                      height: 22,
                                    ),
                                    Text(
                                      'Requirements',
                                      style: heading2.copyWith(fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    for (var text in requirements)
                                      Container(
                                        width: 310,
                                        margin: EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/ellipse.png',
                                              width: 5,
                                              height: 5,
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Flexible(
                                              child: Text(
                                                text,
                                                style: primaryText.copyWith(
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'About Company',
                                      style: heading2.copyWith(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: heightfloatbutton + 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
// NOTE: Floating Button
        floatingActionButton: Container(
          height: heightfloatbutton,
          width: MediaQuery.of(context).size.width - (2 * 23),
          margin: EdgeInsets.symmetric(horizontal: 23),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Apply Now',
                      style: heading2.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: gray5,
                    elevation: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Image.asset(
                    'assets/images/savenav_active.png',
                    width: 20,
                    height: 26,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: gray5,
                  elevation: 20,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
