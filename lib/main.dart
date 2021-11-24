import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

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

final _headerKey = GlobalKey();

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50, top: 50),
            child: TopHeader(
              key: _headerKey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 700,
                    color: Colors.red,
                    child: Column(
                      children: [
                        SideBarButtons(
                          isSelected: true,
                          buttonText: 'Dashboard',
                          buttonIcon: Icon(CupertinoIcons.home),
                          onTap: () {},
                        ),
                        SideBarButtons(
                          isSelected: false,
                          buttonText: 'Favourites',
                          buttonIcon: Icon(CupertinoIcons.heart),
                          onTap: () {},
                        ),
                        SideBarButtons(
                          isSelected: false,
                          buttonText: 'Shared',
                          buttonIcon: Icon(CupertinoIcons.share),
                          onTap: () {},
                        ),
                        SideBarButtons(
                          isSelected: false,
                          buttonText: 'Bin',
                          buttonIcon: Icon(CupertinoIcons.trash),
                          onTap: () {},
                        ),
                        const SizedBox(height: 20),
                        Divider(indent: 25, endIndent: 25),
                        const SizedBox(height: 20),
                        SideBarButtons(
                          isSelected: false,
                          buttonText: 'Settings',
                          buttonIcon: FaIcon(LineIcons.cog),
                          onTap: () {},
                        ),
                        SideBarButtons(
                          isSelected: false,
                          buttonText: 'Help',
                          buttonIcon: FaIcon(CupertinoIcons.info),
                          onTap: () {},
                        ),
                        Spacer(),
                        SideBarButtons(
                          isSelected: false,
                          buttonText: 'Logout',
                          buttonIcon: Icon(Icons.logout),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    height: 20,
                    color: Colors.green,
                  ),
                ),
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

class SideBarButtons extends StatelessWidget {
  final bool isSelected;
  final String buttonText;
  final Widget buttonIcon;
  final Function() onTap;
  const SideBarButtons({
    required this.isSelected,
    required this.buttonText,
    required this.buttonIcon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.grey[300] : null,
        ),
        width: double.maxFinite,
        padding: const EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
        ),
        child: Center(
          child: Row(
            children: [
              const SizedBox(width: 50),
              buttonIcon,
              const SizedBox(width: 10),
              Text(
                buttonText,
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
