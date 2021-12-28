import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:tasbe7/Screens/bottonshet.dart';
import 'package:tasbe7/Screens/homescreen.dart';
import 'package:tasbe7/Screens/timebutton.dart';
import 'package:tasbe7/Screens/wardscreen.dart';

import 'mycolors.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  final tabList = ["السبحة الإلكترونية", "حصن المسلم"];
  final tab = [const HomeScreen()];
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC48404),
      appBar: AppBar(
        backgroundColor: MyColors.black,
        leading: GestureDetector(
          child: Image.asset(
            "assets/images/mosque.png",
            width: 30,
            height: 3,
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const TimeButton();
              },
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const BottonShet();
                },
              );
            },
            icon: const Icon(
              Icons.info_outline_rounded,
              color: Color(0xffFF9B00),
              size: 30,
            ),
          ),
        ],
        title: const Text("وُذَڪرٍ",
            style: TextStyle(
              color: Color(0xffFF9B00),
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicator: const PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: Color(0xffC48404),
            insets: EdgeInsets.only(bottom: 6),
          ),
          tabs: tabList.map((item) {
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeScreen(),
          WardScreen(),
        ],
      ),
    );
  }
}
