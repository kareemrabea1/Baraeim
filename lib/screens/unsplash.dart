import 'package:flutter/material.dart';

class UnSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 428,
          height: 926,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 137,
                top: 343,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 182,
                        height: 173.56,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          ,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -43.43,
                top: 557,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.35),
                  child: Container(
                    width: 29.11,
                    height: 29.11,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/unsplash.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 133,
                top: 536,
                child: Text(
                  'baraem',
                  style: TextStyle(
                    color: Color(0xFFF387B2),
                    fontSize: 38,
                    fontFamily: 'Showcard Gothic',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 3.80,
                  ),
                ),
              ),
              Positioned(
                left: 134,
                top: 774,
                child: Container(
                  width: 34.02,
                  height: 32.44,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
