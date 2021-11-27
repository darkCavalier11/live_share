import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        constraints: BoxConstraints(maxWidth: 250),
        height: MediaQuery.of(context).size.height - 168,
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
              buttonText: 'Hubs',
              buttonIcon: Icon(CupertinoIcons.paperplane),
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
              buttonIcon: Icon(LineIcons.cog),
              onTap: () {},
            ),
            SideBarButtons(
              isSelected: false,
              buttonText: 'Info',
              buttonIcon: FaIcon(CupertinoIcons.info),
              onTap: () {},
            ),
            Spacer(),
            Divider(),
            const SizedBox(height: 20),
            SideBarButtons(
              isSelected: false,
              buttonText: 'Logout',
              buttonIcon: Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
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
