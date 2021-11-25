import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:live_share/home_screen/widgets/search_text_field.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                padding: const EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.bell),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(maxRadius: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
