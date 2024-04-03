import 'package:baraeim/screens/enter_otp.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 24,right: 24,top: 31),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  height: 295,
                    width: 380,
                    'assets/forget_password.png'),
                SizedBox(height: 56,),
                Text('Enter your email',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: '@gmail.com',
                    fillColor: const Color(0xFFF8FAFC),
                    filled: true,
                    // labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(12) ,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), ),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),

                ),
                SizedBox(height: 32,),
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
                        MaterialPageRoute(builder: (context) =>  OTPScreen()));

                  },
                  child:
                  const Text('Continue',style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: 0.12,),),


                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}
