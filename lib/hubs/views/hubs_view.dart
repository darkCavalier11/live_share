import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/hubs/views/widgets/group_item.dart';

class HubView extends StatelessWidget {
  const HubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 168,
      width: double.maxFinite,
      padding:
          const EdgeInsets.symmetric(horizontal: UIconstants.regularPadding),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UIconstants.cardBorderRadius),
          border: Border.all(
            color: Colors.blueAccent.withOpacity(0.3),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Groups',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: Colors.black.withOpacity(0.6),
                  ),
                )
              ],
            ),
            Divider(),
            Expanded(
              child: Container(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GroupItem(index: index);
                  },
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

