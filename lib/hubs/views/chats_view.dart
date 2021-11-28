import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/hubs/views/widgets/group_item.dart';
import 'package:live_share/ui/reusables/vertical_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalBar(
      headerText: 'Chats',
      children: [],
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
