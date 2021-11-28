import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/ui/reusables/avatar_button_stack.dart';

class GroupItem extends StatelessWidget {
  const GroupItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(UIconstants.cardBorderRadius),
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UIconstants.cardBorderRadius),
        ),
        padding: const EdgeInsets.all(UIconstants.regularPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              maxRadius: 18,
              backgroundImage: NetworkImage(
                  'https://www.thespruce.com/thmb/LIYt_gkk2IA7UCQsumcDzXOUn3Q=/2845x2845/smart/filters:no_upscale()/types-of-leaf-arrangements-3269814-03-a6b9b4775c5b47b79e14aed9a7e6ac90.jpg'),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Personal',
                        style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        child: AvatarButtonStack(),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // CircleAvatar(
                      //   maxRadius: 10,
                      //   backgroundColor: Colors.deepPurpleAccent,
                      //   // child: Text('S'),
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 2, horizontal: 4),
                      //   decoration: BoxDecoration(
                      //     color: Colors.purpleAccent.withOpacity(0.1),
                      //     borderRadius: BorderRadius.circular(20),
                      //   ),
                      //   child: Center(
                      //     child: Text(
                      //       'mac\'s iOS',
                      //       style: TextStyle(fontWeight: FontWeight.bold),
                      //     ),
                      //   ),
                      // ),
                      Text('  '),
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    color: Colors.deepPurpleAccent
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Mac\'s OS',
                                    style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Flutter is the best platform to develop cross platform apps at a significant amount of time. Flutter can speed up the work by 3 times.',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        '3:52 PM',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
