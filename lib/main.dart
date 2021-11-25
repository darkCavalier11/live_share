import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'home_screen/widgets/home_activity_card.dart';
import 'home_screen/widgets/recent_item_list.dart';
import 'home_screen/widgets/sidebar.dart';
import 'home_screen/widgets/top_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: UIconstants.topHeaderPadding,
                right: UIconstants.topHeaderPadding,
                top: UIconstants.topHeaderPadding),
            child: TopHeader(),
          ),
          Padding(
            padding: const EdgeInsets.all(UIconstants.bodyPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SideBar(),
                HomeView(),
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 20,
                    color: Colors.black,
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

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: Container(
        height: MediaQuery.of(context).size.height - 168,
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: double.maxFinite,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              RecentItemList(),
              Row(
                children: [
                  HomeActivityCard(
                    activityType: ActivityType.UPLOAD,
                    fileDownloaded: 23.8,
                    fileName: 'file.pdf',
                    fileSize: 48,
                    internetSpeed: '2.3MB/s',
                  ),
                  HomeActivityCard(
                    activityType: ActivityType.DOWNLOAD,
                    fileDownloaded: 23.8,
                    fileName: 'file.pdf',
                    fileSize: 48,
                    internetSpeed: '2.3MB/s',
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
