import 'package:flutter/material.dart';

class AvatarButtonStack extends StatefulWidget {
  const AvatarButtonStack({
    Key? key,
  }) : super(key: key);

  @override
  _AvatarButtonStackState createState() => _AvatarButtonStackState();
}

class _AvatarButtonStackState extends State<AvatarButtonStack> {
  double _left0 = 0, _left1 = 20, _left2 = 15, _left3 = 10;
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovering = true;
          _left0 = 60;
          _left1 = 45;
          _left2 = 30;
          _left3 = 15;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
          _left0 = 0;
          _left1 = 20;
          _left2 = 15;
          _left3 = 10;
        });
      },
      child: Stack(
        alignment: Alignment.centerLeft,
        clipBehavior: Clip.none,
        children: [
          AnimatedPositioned(
            left: _left0,
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
            duration: Duration(milliseconds: 200),
            left: _left1,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              maxRadius: 10,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: _left2,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              maxRadius: 10,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: _left3,
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              maxRadius: 10,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.brown,
            maxRadius: 10,
          ),
        ],
      ),
    );
  }
}
