import 'package:baraeim/screens/login.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:31,left: 24,right: 24),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  height: 271,
                    width: 380,
                    'assets/reset_password.png'),
                SizedBox(height: 56,),
                Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.5)),
                    hintText: '.......',

                    fillColor: const Color(0xFFF8FAFC),
                    filled: true,
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(12) ,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(12) ,
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5),),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
                SizedBox(height: 32,),
                Text('Confirm Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.5)),
                    hintText: '.......',

                    fillColor: const Color(0xFFF8FAFC),
                    filled: true,
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(12) ,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(12) ,
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5),),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
                SizedBox(height: 40,),
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
                        MaterialPageRoute(builder: (context) => const Login()));

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
                SizedBox(height: 32,)


              ],
            ),
          ],
        ),
      ),
    );
  }
}
