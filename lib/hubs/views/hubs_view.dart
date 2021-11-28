import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';

class HubView extends StatelessWidget {
  const HubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 168,
      padding:
          const EdgeInsets.symmetric(horizontal: UIconstants.regularPadding),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(UIconstants.cardBorderRadius),
        ),
      ),
    );
  }
}
