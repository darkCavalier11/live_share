import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/home_screen/views/widgets/search_text_field.dart';

class TopHeaderView extends StatelessWidget {
  const TopHeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: UIconstants.topHeaderPadding,
        right: UIconstants.topHeaderPadding,
        top: UIconstants.topHeaderPadding,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                const Icon(Icons.local_parking_outlined),
                const Spacer(),
              ],
            ),
          ),
          Flexible(
            flex: 6,
            child: Row(
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: SearchTextField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(UIconstants.regularPadding),
                  child: Icon(CupertinoIcons.bell),
                ),
                Padding(
                  padding: const EdgeInsets.all(UIconstants.regularPadding),
                  child: CircleAvatar(maxRadius: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
