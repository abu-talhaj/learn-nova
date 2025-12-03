import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/const/font_sizes/all_font_size.dart';
import 'package:learn_nova/screens/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController emailClt = TextEditingController();
  TextEditingController passwordClt = TextEditingController();
  TextEditingController nameClt = TextEditingController();
  TextEditingController confirmpasswordClt = TextEditingController();
  late TabController _tabController;
  bool ispassword = true;
  bool _isconfirmpass = true;
  TextEditingController emailsClt = TextEditingController();
  TextEditingController passwordsClt = TextEditingController();
  TextEditingController namesClt = TextEditingController();
  TextEditingController confirmpasswordsClt = TextEditingController();
  bool ispasswords = true;
  bool _isconfirmpasss = true;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    nameClt.dispose();
    emailClt.dispose();
    passwordClt.dispose();
    confirmpasswordClt.dispose();
    emailsClt.dispose();
    passwordsClt.dispose();
    namesClt.dispose();
    confirmpasswordsClt.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 233.h,
            width: 430.w,
            decoration: BoxDecoration(
              color: AllColors.secondaryColors,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/png/Learnova.png",
                  height: 70.h,
                  width: 240.w,
                ),
                Text(
                  "Learnova",
                  style: TextStyle(fontSize: 26.sp, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Center(
            child: Text(
              "Create Account",
              style: TextStyle(
                fontSize: AllFontSize.largeSize,
                fontWeight: FontWeight.bold,
                color: AllColors.loginColors,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          TabBar(
            controller: _tabController,
            labelColor: AllColors.secondaryColors,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AllColors.secondaryColors,
            indicatorWeight: 2,
            tabs: [
              Tab(text: "Student"),
              Tab(text: "Teacher"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                //Student
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Text(
                          "Name",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: nameClt,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Email",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: emailClt,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Password",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: passwordClt,
                          obscureText: ispassword,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                              icon: Icon(
                                ispassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Confirm Password",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: confirmpasswordClt,
                          obscureText: _isconfirmpass,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isconfirmpass = !_isconfirmpass;
                                });
                              },
                              icon: Icon(
                                _isconfirmpass
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AllColors.primaryColors,
                              padding: EdgeInsets.symmetric(
                                horizontal: 135,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Already have an account?  ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                    color: AllColors.textColors,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(LoginScreen());
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Teacher
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Text(
                          "Name",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: namesClt,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Email",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: emailsClt,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Password",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: passwordsClt,
                          obscureText: ispasswords,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  ispasswords = !ispasswords;
                                });
                              },
                              icon: Icon(
                                ispasswords
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Confirm Password",
                          style: TextStyle(color: AllColors.textgreyColors),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          controller: confirmpasswordsClt,
                          obscureText: _isconfirmpasss,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            filled: true,
                            fillColor: Color(0xffF1F4F8),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isconfirmpasss = !_isconfirmpasss;
                                });
                              },
                              icon: Icon(
                                _isconfirmpasss
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AllColors.primaryColors,
                              padding: EdgeInsets.symmetric(
                                horizontal: 135,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Already have an account?  ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                    color: AllColors.textColors,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(LoginScreen());
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
