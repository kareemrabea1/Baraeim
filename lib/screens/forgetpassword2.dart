import 'package:flutter/material.dart';
class Forgotpassword extends StatelessWidget {
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
                left: 0,
                top: 0,
                child: Container(
                  width: 428,
                  height: 44,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 428,
                        height: 44,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 54,
                              child: Text(
                                '9:41',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E293B),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                            Container(
                              width: 15.33,
                              height: 11,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/15x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 24.33,
                              height: 11.33,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.35,
                                      child: Container(
                                        width: 22,
                                        height: 11.33,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1, color: Color(0xFF1E293B)),
                                            borderRadius: BorderRadius.circular(2.67),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 2,
                                    top: 2,
                                    child: Container(
                                      width: 18,
                                      height: 7.33,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF1E293B),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1.33),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 17,
                              height: 10.67,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/17x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 44,
                child: Container(
                  width: 428,
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(children: [
                            ,
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 139,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 114,
                        height: 143,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 35,
                              child: Container(
                                width: 114,
                                height: 108,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF687B3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 7,
                              top: 0,
                              child: Container(
                                width: 100,
                                height: 129,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/Picture2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 360,
                              child: Text(
                                'Enter OTP',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF4E4B66),
                                  fontSize: 32,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0.05,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: 380,
                              child: Text(
                                'Enter the OTP code we just sent\nyou on your registered Email address',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF61677D),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 592,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF687B3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                                letterSpacing: 0.12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Didn’t get OTP? ',
                              style: TextStyle(
                                color: Color(0xFF3A4053),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                              ),
                            ),
                            TextSpan(
                              text: 'Resend OTP',
                              style: TextStyle(
                                color: Color(0xFFF687B3),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 476,
                child: Container(
                  width: 344,
                  height: 70,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 56,
                          height: 70,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFFF687B3),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22,
                        top: 23,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.02,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 144,
                        top: 0,
                        child: Container(
                          width: 56,
                          height: 70,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0x7FF687B3),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 216,
                        top: 0,
                        child: Container(
                          width: 56,
                          height: 70,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0x7FF687B3),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 288,
                        top: 0,
                        child: Container(
                          width: 56,
                          height: 70,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0x7FF687B3),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 0,
                        child: Container(
                          width: 56,
                          height: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 56,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignOutside,
                                        color: Color(0xFFF687B3),
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 23,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.02,
                                    letterSpacing: 0.12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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