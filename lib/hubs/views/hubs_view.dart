import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/hubs/views/widgets/group_item.dart';
import 'package:live_share/ui/reusables/vertical_bar.dart';

class HubView extends StatelessWidget {
  const HubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalBar(
      headerText: 'Groups',
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: index % 2 == 0 ? null : Colors.lightBlue.withOpacity(0.1),
            child: GroupItem(),
          );
        },
        itemCount: 10,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.ellipsis_vertical,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
    );
  }
}
