import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/home_screen/views/widgets/explore_tab.dart';
import 'package:live_share/home_screen/views/widgets/home_view.dart';
import 'package:live_share/home_screen/views/widgets/sidebar.dart';


class DashboardBodyView extends StatelessWidget {
  const DashboardBodyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(UIconstants.bodyPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBar(),
          HomeView(),
          ExploreTab(),
        ],
      ),
    );
  }
}
