import 'package:baraeim/screens/reset_password.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> controllers = List.generate(5, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:31,left: 24,right: 24),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  height: 295,
                    width: 380,
                    'assets/otp.png'),
                SizedBox(height: 42,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                          (index) => Container(
                        width: 50,
                        margin: EdgeInsets.all(5),
                        child: TextField(
                          controller: controllers[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          onChanged: (String value) {
                            if (value.length == 1 && index != 4) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(12) ,
                                borderSide: BorderSide(color: Color(0xFFF687B3)),



                              ),

                            counter: Offstage(),

                            border: OutlineInputBorder(

                              borderSide: BorderSide(color: Color(0xFFF687B3),),
                              borderRadius: BorderRadius.circular(12) ,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 46,),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    fixedSize:const Size(300,20),
                    backgroundColor: const Color(0xFFF687B3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),

                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ResetPassword()));

                  },
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: const Text('Continue',style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                      letterSpacing: 0.12,),),
                  ),


                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}