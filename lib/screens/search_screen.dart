import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchClt = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchClt.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    border: Border.all(color: Colors.black),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                SizedBox(width: 10.w),
                Text("Back", style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(height: 50.h),
            TextField(
              style: TextStyle(color: Colors.black),
              controller: searchClt,
              decoration: InputDecoration(
                suffixIcon: Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AllColors.primaryColors,
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                hintText: "Search",
                filled: true,
                fillColor: Color(0xffEEF4FB),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12).r,
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Column(
              children: [
                Container(
                  height: 50.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Color(0xffF1F4F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Trigonometry",
                      style: TextStyle(color: Color(0xff363636)),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 50.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Color(0xffF1F4F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Vocabulary",
                      style: TextStyle(color: Color(0xff363636)),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 50.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Color(0xffF1F4F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Grammar",
                      style: TextStyle(color: Color(0xff363636)),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 50.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Color(0xffF1F4F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Geography",
                      style: TextStyle(color: Color(0xff363636)),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 50.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Color(0xffF1F4F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "XXX",
                      style: TextStyle(color: Color(0xff363636)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
