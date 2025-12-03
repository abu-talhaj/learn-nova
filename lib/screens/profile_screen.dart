import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/const/font_sizes/all_font_size.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text("Back", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.black),
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/png/profile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Jessica Roy",
                style: TextStyle(
                  fontSize: AllFontSize.largeSize,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Joined since - Jun 2024",
                style: TextStyle(
                  fontSize: AllFontSize.smallSize,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6FAFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          "05",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "In Progress",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Container(
                    height: 80.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6FAFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          "01",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Completed",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Container(
                    height: 80.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6FAFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          "50",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Courses",
                    style: TextStyle(
                      fontSize: AllFontSize.largeSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 220.h,
                    width: 450.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF6FAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 20.h),
                                Text(
                                  "English Tenses",
                                  style: TextStyle(
                                    fontSize: AllFontSize.largeSize,
                                    color: AllColors.loginColors,
                                  ),
                                ),
                                Text(
                                  "Level - Intermediate",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/png/profile.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Denisa Oze!",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text("32 mins ago"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Get Back To It",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AllColors.textColors,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Course details",
                                style: TextStyle(color: AllColors.textColors),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 220.h,
                    width: 450.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF6FAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 20.h),
                                Text(
                                  "English Tenses",
                                  style: TextStyle(
                                    fontSize: AllFontSize.largeSize,
                                    color: AllColors.loginColors,
                                  ),
                                ),
                                Text(
                                  "Level - Intermediate",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/png/profile.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Denisa Oze!",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text("32 mins ago"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Get Back To It",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AllColors.textColors,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Course details",
                                style: TextStyle(color: AllColors.textColors),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
