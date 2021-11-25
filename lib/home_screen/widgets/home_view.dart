import 'package:flutter/material.dart';
import 'package:live_share/home_screen/widgets/recent_item_list.dart';

import 'home_activity_card.dart';

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
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}