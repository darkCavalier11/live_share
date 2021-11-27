import 'package:flutter/material.dart';

class HubView extends StatelessWidget {
  const HubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Row(
        children: [
          Container(
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
