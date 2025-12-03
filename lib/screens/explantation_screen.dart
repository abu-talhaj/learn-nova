import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/const/font_sizes/all_font_size.dart';

class ExplantationScreen extends StatefulWidget {
  final String selectedOption;
  const ExplantationScreen({super.key, required this.selectedOption});

  @override
  State<ExplantationScreen> createState() => _ExplantationScreenState();
}

class _ExplantationScreenState extends State<ExplantationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Row(
              children: [
                Container(
                  height: 35.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
                SizedBox(width: 12.w),
                Text("Back", style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "Let's Test Your Understanding!",
              style: TextStyle(
                fontSize: AllFontSize.largeSize,
                color: AllColors.loginColors,
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 38.h,
              width: 102.w,
              decoration: BoxDecoration(
                color: Color(0xffDBF1FF),
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Center(
                child: Text(
                  "Vocabulary",
                  style: TextStyle(color: AllColors.textColors),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Container(
                height: 100.h,
                width: 420.w,
                decoration: BoxDecoration(
                  color: Color(0xffDBF1FF),
                  borderRadius: BorderRadius.circular(15).r,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Q. My dog is a little __ , especially ",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "when around other dogs. ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Container(
                height: 437.h,
                width: 390.w,
                child: Column(
                  children: [
                    Container(
                      height: 56.h,
                      width: 390,
                      decoration: BoxDecoration(
                        color: Color(0xffDBF1FF),
                        borderRadius: BorderRadius.circular(10).r,
                        border: Border.all(width: 2.w, color: Colors.black38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Timid (膽小)",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10).r,
                                border: Border.all(color: Colors.black38),
                              ),
                              child: Center(
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                    fontSize: AllFontSize.smallSize,
                                    fontWeight: FontWeight.bold,
                                    color: AllColors.textColors,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explanation",
                            style: TextStyle(
                              fontSize: AllFontSize.largeSize,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "• Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述一隻狗在其他狗的周圍表現出的從屬或緊張的行為。",
                              ),
                              Divider(color: Colors.black26),
                              Text(
                                "• Scary (可怕) 和Frightening (嚇人) 表示狗會讓其他人或動物感到恐懼，這與狗對其他狗的反應不符。",
                              ),
                              Divider(color: Colors.black26),
                              Text("• Concerned (擔憂) 通常不用來描述狗與其他狗相處時感到壓力的反應。"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: AllFontSize.smallSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AllColors.primaryColors,
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
