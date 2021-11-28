import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';

class VerticalBar extends StatelessWidget {
  final String headerText;
  final Widget? trailing;
  final Widget? child;
  const VerticalBar({
    Key? key,
    required this.headerText,
    this.child,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 168,
      padding: const EdgeInsets.all(UIconstants.regularPadding),
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
                  headerText,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                trailing ?? SizedBox.shrink(),
              ],
            ),
            Divider(),
            Expanded(
              child: child ?? Container(),
            ),
          ],
        ),
      ),
    );
  }
}
