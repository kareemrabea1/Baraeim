import 'package:flutter/material.dart';

import '../base_page_as_pregrnant/presentation/pages/base_page_as_pregrnant.dart';

class RegisterAsPregrnant extends StatefulWidget {
  const RegisterAsPregrnant({super.key});

  @override
  State<RegisterAsPregrnant> createState() => _RegisterAsPregrnantState();
}

class _RegisterAsPregrnantState extends State<RegisterAsPregrnant> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(top: 80,left: 34,right: 34),
        child: ListView(
          children: [
      Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text('Sign in',style: TextStyle(fontSize:30 ,fontWeight: FontWeight.w600,color: Color(0xFFFC78A7)),),
              const Text('If you don’t have an account register',style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w400,),),
              const Row(
                children: [
                  Text('You can ',style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w400,),),
                  Text('Sign up here ! ',style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w400,color: Colors.orange),),
                ],
              ),
                const SizedBox(height: 72,),
                const Text('Name',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),),
                const SizedBox(height: 5,),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: 'your name',
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
                const SizedBox(height: 32,),
                //////////////////////////////////////
                const Text('Email',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),),
                const SizedBox(height: 5,),
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
                const SizedBox(height: 32,),
                /////////////////////////////////////////////
                const Text('Password',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),),
                const SizedBox(height: 5,),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: '........',
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
                const SizedBox(height: 32,),
                ///////////////////////////////////
                const Text('Date of Pregnancy',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),),
                const SizedBox(height: 5,),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: '4/2/2024',
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
                const SizedBox(height: 32,),
                //////////////////////////////////////////
                const Text('Expected Date of Birth',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),),
                const SizedBox(height: 5,),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: '9/2/2024',
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
                const SizedBox(height: 32,),
                /////////////////////////////////////
                const Text('Description of the condition',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),),
                const SizedBox(height: 5,),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: """Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Maecenas facilisis sed ipsum iaculis semper.""",
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
                const SizedBox(height: 60,),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    fixedSize:const Size(300,20),
                    backgroundColor: const Color(0xFFF687B3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),

                  ),
                  onPressed: () {
///todo: login as Pregrnant
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BasePageAsPregrnant()));

                  },
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: const Text('Register',style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                      letterSpacing: 0.12,),),
                  ),


                ),
                const SizedBox(height: 60,),


            ],
      ),
    ],
        ),
      ),

    );
  }
}
