import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/const/font_sizes/all_font_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List text = [
    'All',
    '中文',
    'English',
    'Maths',
    'Chemistry',
    'All',
    '中文',
    'English',
    'Maths',
    'Chemistry',
  ];

  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Learn Through Watching Reels",
                    style: TextStyle(
                      fontSize: AllFontSize.largeSize,
                      color: AllColors.loginColors,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TabBar(
                controller: _tabController,
                labelColor: AllColors.secondaryColors,
                unselectedLabelColor: Colors.grey,
                indicatorColor: AllColors.secondaryColors,
                indicatorWeight: 2,
                tabs: [
                  Tab(text: "Trending"),
                  Tab(text: "New"),
                  Tab(text: "Following"),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 40.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: text.length,
                  itemBuilder: (context, index) {
                    return selectedIndex == index
                        ? selectedtext(text[index])
                        : unselectedtext(text[index], index);
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 268.h,
                                    width: 189.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/png/home1.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 180.h),
                                          Text(
                                            'Vocabulary 101',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/png/homep.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                'Jessica Roy',
                                                style: TextStyle(
                                                  fontSize: AllFontSize
                                                      .extrasmallSize,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    height: 209.h,
                                    width: 189.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/png/home3.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 130.h),
                                          Text(
                                            'Trigonometry Basic',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/png/homep.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                'Jessica Roy',
                                                style: TextStyle(
                                                  fontSize: AllFontSize
                                                      .extrasmallSize,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    height: 209.h,
                                    width: 189.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/png/home3.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 130.h),
                                          Text(
                                            'Vocabulary 101',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/png/homep.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                'Jessica Roy',
                                                style: TextStyle(
                                                  fontSize: AllFontSize
                                                      .extrasmallSize,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 209.h,
                                    width: 189.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/png/home2.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 130.h),
                                          Text(
                                            'English Listening',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/png/homep.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                'Jessica Roy',
                                                style: TextStyle(
                                                  fontSize: AllFontSize
                                                      .extrasmallSize,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    height: 268.h,
                                    width: 189.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/png/home4.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 180.h),
                                          Text(
                                            'Geometry Advance',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/png/homep.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                'Jessica Roy',
                                                style: TextStyle(
                                                  fontSize: AllFontSize
                                                      .extrasmallSize,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    height: 268.h,
                                    width: 189.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/png/home3.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 180.h),
                                          Text(
                                            'Vocabulary 101',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/png/homep.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                'Jessica Roy',
                                                style: TextStyle(
                                                  fontSize: AllFontSize
                                                      .extrasmallSize,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  unselectedtext(String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 6,
              bottom: 8,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: AllFontSize.smallSize),
              ),
            ),
          ),
        ),
      ),
    );
  }

  selectedtext(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffE5F5FF),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 6,
            bottom: 8,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: AllFontSize.smallSize,
                color: AllColors.textColors,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
