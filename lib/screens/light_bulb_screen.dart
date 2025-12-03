import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/const/font_sizes/all_font_size.dart';
import 'package:learn_nova/screens/explantation_screen.dart';

class LightBulbScreen extends StatefulWidget {
  const LightBulbScreen({super.key});

  @override
  State<LightBulbScreen> createState() => _LightBulbScreenState();
}

class _LightBulbScreenState extends State<LightBulbScreen> {
  int? selectedIndex;

  List<String> options = ["Scared", "Frightening", "Timid", "Concerned"];

  List<String> optionLetters = ["A", "B", "C", "D"];

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined, color: Colors.black),
                    SizedBox(width: 10.w),
                    Text("23.03s", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
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

            SizedBox(height: 40.h),
            Column(
              children: List.generate(options.length, (index) {
                bool isSelected = selectedIndex == index;
                return Padding(
                  padding: EdgeInsets.only(bottom: 25.h),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 56.h,
                      width: 390.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected
                              ? AllColors.textColors
                              : Colors.black38,
                          width: isSelected ? 2.5 : 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10).r,
                        color: isSelected
                            ? Colors.blue.shade50
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              options[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10).r,
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.black26,
                                ),
                                color: isSelected
                                    ? AllColors.textColors
                                    : Colors.transparent,
                              ),
                              child: Center(
                                child: Text(
                                  optionLetters[index],
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20.h),
            Center(
              child: ElevatedButton(
                  onPressed: selectedIndex == null
                      ? null
                      : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ExplantationScreen(
                          selectedOption: options[selectedIndex!],
                        ),
                      ),
                    );
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AllColors.primaryColors,
                  padding: EdgeInsets.symmetric(horizontal: 165, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: AllFontSize.smallSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
