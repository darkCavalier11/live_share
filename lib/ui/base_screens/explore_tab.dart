import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/ui/reusables/vertical_bar.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalBar(
      headerText: 'Explore',
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.ellipsis_vertical,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pinkAccent.withOpacity(0.1),
                ),
                child: Text(
                  'Documents',
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...List.filled(5, 1).map(
            (e) => Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.1),
                borderRadius:
                    BorderRadius.circular(UIconstants.cardBorderRadius),
              ),
              margin: const EdgeInsets.symmetric(vertical: 5),
            ),
          ),
        ],
      ),
    );
  }
}
