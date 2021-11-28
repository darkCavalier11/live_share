import 'package:flutter/material.dart';

class AvatarButtonStack extends StatefulWidget {
  const AvatarButtonStack({
    Key? key,
  }) : super(key: key);

  @override
  _AvatarButtonStackState createState() => _AvatarButtonStackState();
}

class _AvatarButtonStackState extends State<AvatarButtonStack> {
  double _right0 = 10, _right1 = 0, _right2 = 8, _right3 = 16, _right4 = 24;
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _right0 = 0;
          _right1 = 15;
          _right2 = 30;
          _right3 = 45;
          _right4 = 60;
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _right0 = 10;
          _right1 = 0;
          _right2 = 8;
          _right3 = 16;
          _right4 = 24;
          _isHovering = false;
        });
      },
      child: Stack(
        alignment: Alignment.centerLeft,
        clipBehavior: Clip.none,
        children: [
          AnimatedPositioned(
            right: _right0,
            duration: Duration(milliseconds: 200),
            child: AnimatedContainer(
              duration: Duration(seconds: 200),
              padding: const EdgeInsets.all(2),
              decoration: _isHovering
                  ? BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    )
                  : null,
              child: Center(
                child: Text(
                  '+5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            right: _right1,
            duration: Duration(milliseconds: 200),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                maxRadius: 10,
              ),
            ),
          ),
          AnimatedPositioned(
            right: _right2,
            duration: Duration(milliseconds: 200),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.orange,
                maxRadius: 10,
              ),
            ),
          ),
          AnimatedPositioned(
            right: _right3,
            duration: Duration(milliseconds: 200),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                maxRadius: 10,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            right: _right4,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                maxRadius: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
