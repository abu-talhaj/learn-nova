import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/const/font_sizes/all_font_size.dart';

class VideoLibraryScreen extends StatefulWidget {
  const VideoLibraryScreen({super.key});

  @override
  State<VideoLibraryScreen> createState() => _VideoLibraryScreenState();
}

class _VideoLibraryScreenState extends State<VideoLibraryScreen> {
  bool _isFollowed = false;
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/png/video.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 44.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10).r,
                        ),
                        child: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 680.h),
                Row(
                  children: [
                    SizedBox(width: 10.w),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/png/videoC.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Jessica Roy",
                      style: TextStyle(
                        fontSize: AllFontSize.largeSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isFollowed = !_isFollowed;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: _isFollowed ? Colors.white12 : Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Text(
                          _isFollowed ? "Followed" : "Follow",
                          style: TextStyle(
                            fontSize: AllFontSize.smallSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isLiked = !_isLiked;
                        });
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          color: _isLiked ? Colors.white : Colors.white12,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Icon(
                          _isLiked
                              ? Icons.thumb_up_alt_outlined
                              : Icons.thumb_up_alt,
                          size: 20.sp,
                          color: _isLiked
                              ? Colors.black
                              : AllColors.primaryColors,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Learning Vocabulary Today!",
                      style: TextStyle(
                        fontSize: AllFontSize.largeSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "So what is the necessary to learn vocabulary in today world. Everyone is learn..... ",
                            style: TextStyle(
                              fontSize: AllFontSize.smallSize,
                              color: Colors.white.withOpacity(0.85),
                              height: 1.4,
                            ),
                          ),
                          TextSpan(
                            text: "read more",
                            style: TextStyle(
                              fontSize: AllFontSize.smallSize,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
      ),
    );
  }
}
