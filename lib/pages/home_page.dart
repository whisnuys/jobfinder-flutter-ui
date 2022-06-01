// ignore_for_file: prefer_const_constructors

import 'package:findjobapp/theme.dart';
import 'package:findjobapp/widgets/available_job.dart';
import 'package:findjobapp/widgets/job_category.dart';
import 'package:findjobapp/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bottom_navbar_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
// NOTE: Header Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Hello, ',
                          style: GoogleFonts.inter(
                            textStyle:
                                heading3.copyWith(fontWeight: FontWeight.w400),
                          ),
                          children: [
                            TextSpan(
                              text: 'Gustanto',
                              style: heading3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Find Your Great Job', style: heading1)
                    ],
                  ),
                  Image.asset(
                    'assets/images/avatar.png',
                    width: 41,
                    height: 41,
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
// NOTE: Search Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 272,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: TextField(
                      cursorColor: gray4,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: gray4,
                        border: InputBorder.none,
                        hintText: 'Search a Job',
                        hintStyle: TextStyle(
                          color: gray4,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/iconfilter.png',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
//  NOTE: Popular Section
              Text(
                'Most Popular',
                style: heading3,
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 135,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    popularCard(
                      cardColor: primaryBlue,
                      iconCard: 'assets/images/tokpedbig.png',
                      location: 'Tokopedia - Jakarta, ID',
                      salary: ' -  / Mo',
                      title: 'Senior Project Manager',
                      type: ['Full Time', 'Remote', 'Senior'],
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    popularCard(
                      cardColor: Colors.white,
                      iconCard: 'assets/images/olx.png',
                      location: 'OLX - Jakarta, ID',
                      salary: ' -  / Mo',
                      title: 'Junior Graphic Designer',
                      type: ['Full Time', 'Remote', 'Junior'],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
// NOTE: Category Section
              SizedBox(
                height: 22,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Wrap(
                      spacing: 7,
                      children: [
                        JobCategory(
                          active: true,
                          text: 'All Jobs',
                        ),
                        JobCategory(
                          active: false,
                          text: 'Ui Designer',
                        ),
                        JobCategory(
                          active: false,
                          text: 'FE Dev',
                        ),
                        JobCategory(
                          active: false,
                          text: 'PM',
                        ),
                        JobCategory(
                          active: false,
                          text: 'Graphic',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
// NOTE: Available Job Section
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.1,
                  children: [
                    AvailJobs(
                      logo: 'assets/images/google.png',
                      title: 'FE Developer',
                      location: 'Google - Jakarta, ID',
                      salary: ' -  / Mo',
                    ),
                    AvailJobs(
                      logo: 'assets/images/facebook.png',
                      title: 'Finance',
                      location: 'Facebook - Jakarta, ID',
                      salary: ' -  / Mo',
                    ),
                    AvailJobs(
                      logo: 'assets/images/buka.png',
                      title: 'Graphic Designer',
                      location: 'Bukalapak - Jakarta, ID',
                      salary: ' -  / Mo',
                    ),
                    AvailJobs(
                      logo: 'assets/images/gojek.png',
                      title: 'UX Writer',
                      location: 'Gojek - Jakarta, ID',
                      salary: ' -  / Mo',
                    ),
                    AvailJobs(
                      logo: 'assets/images/apple.png',
                      title: 'IOS Developer',
                      location: 'Apple - Jakarta, ID',
                      salary: ' -  / Mo',
                    ),
                    AvailJobs(
                      logo: 'assets/images/twitter.png',
                      title: 'IT Networking',
                      location: 'Twitter - Jakarta, ID',
                      salary: ' -  / Mo',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
// NOTE: Bottom Navbar Section
      bottomNavigationBar: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, .5),
              spreadRadius: 2.0,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 0;
                });
              },
              icon: menuIndex == 0
                  ? Image.asset(
                      'assets/images/home_active.png',
                      width: 28,
                    )
                  : Image.asset(
                      'assets/images/home.png',
                      width: 28,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 1;
                });
              },
              icon: menuIndex == 1
                  ? Image.asset(
                      'assets/images/savenav_active.png',
                    )
                  : Image.asset('assets/images/savenav.png'),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  menuIndex = 2;
                });
              },
              icon: menuIndex == 2
                  ? Image.asset('assets/images/setting_active.png')
                  : Image.asset('assets/images/setting.png'),
            ),
          ],
        ),
      ),
    );
  }
}
