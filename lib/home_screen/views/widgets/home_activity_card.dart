import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';

class HomeActivityCard extends StatelessWidget {
  final ActivityType activityType;
  final String fileName;
  final double fileSize;
  final double fileDownloaded;
  final String? internetSpeed;
  const HomeActivityCard(
      {Key? key,
      required this.activityType,
      required this.fileName,
      required this.fileSize,
      required this.fileDownloaded,
      this.internetSpeed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(UIconstants.regularPadding),
        child: Container(
          padding: const EdgeInsets.all(UIconstants.regularPadding),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(UIconstants.cardBorderRadius),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activityType == ActivityType.DOWNLOAD
                      ? 'Downloads'
                      : 'Uploads',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(UIconstants.regularPadding),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(UIconstants.cardBorderRadius),
                    color: Colors.lightBlueAccent.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(fileName),
                          Text(internetSpeed.toString())
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              value: (fileDownloaded / fileSize),
                            ),
                          ),
                          const SizedBox(width: 5),
                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Icon(
                              CupertinoIcons.delete,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('$fileDownloaded/$fileSize'),
                          Text(
                            '${(fileDownloaded * 100 / fileSize).toStringAsFixed(1)}%',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum ActivityType {
  UPLOAD,
  DOWNLOAD,
}
