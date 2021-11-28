import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/ui/reusables/avatar_button_stack.dart';

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
                    return InkWell(
                      borderRadius:
                          BorderRadius.circular(UIconstants.cardBorderRadius),
                      onTap: () {
                        print('Button tapped');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 4),
                                          decoration: BoxDecoration(
                                            color: Colors.blueAccent
                                                .withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'mac\'s iOS',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Text('  '),
                                        Expanded(
                                          child: Text(
                                            'Hello World. There is nothing better in cross platform development alternative to flutter',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
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
                      ),
                    );
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
