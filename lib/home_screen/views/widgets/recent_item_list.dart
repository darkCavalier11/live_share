import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_share/constants/ui_constants.dart';

class RecentItemList extends StatelessWidget {
  const RecentItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(UIconstants.regularPadding),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(UIconstants.regularPadding),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(UIconstants.cardBorderRadius),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            CupertinoIcons.suit_heart,
                            color: Colors.black
                                .withOpacity(0.6),
                          ),
                          Icon(
                            CupertinoIcons
                                .ellipsis_vertical,
                            color: Colors.black
                                .withOpacity(0.6),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/File.svg',
                            height: 80,
                            color: Colors.black
                                .withOpacity(0.6),
                          ),
                          Text('JPG'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text('file.pdf'),
                      Spacer(),
                      Row(
                        children: [
                          CircleAvatar(maxRadius: 10),
                          Spacer(),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  CupertinoIcons
                                      .arrow_down_circle,
                                  color: Colors.black
                                      .withOpacity(0.7),
                                ),
                              ),
                              Text(
                                '43MB',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                                      .withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
