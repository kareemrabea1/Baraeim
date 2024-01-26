import 'package:baraeim/screens/tips.dart';
import 'package:flutter/material.dart';

class Vaccinations extends StatefulWidget {
  const Vaccinations({super.key});

  @override
  State<Vaccinations> createState() => _VaccinationsState();
}

class _VaccinationsState extends State<Vaccinations> {
  bool isDone=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 64,
            right: 64,
            top: 23,),
          child: Text('Vaccinations',style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E), ),),
        ),
        leading:Padding(
          padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {Navigator.pop(context);},
          ),
        ),

      ),
      body: ListView(
        children: [
        Stack(
            children:[
          Image.asset("assets/vaccinations.png"),
          Positioned(
            top: 32,
            left: 32,
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
              ),),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tips()));

              },
              child: Text('Tips',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFE17BB4)),),
            ),
          ),


        ]
        ) ,
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left:24,right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    width: 20,
                      "assets/Line 1.png"),
                  SizedBox(width: 8,),
                  Text('At Birth',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),
                  SizedBox(height: 8,),

                ],
              ),

              Container(height: 65,
                width:380 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                  color: Color(0xFF8C8A8A), // Border color
                            // Border width
                ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BCG (Bacillus Calmette Guerin) vaccine',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Row(
                        children: [
                          Text('04-Jan-2024',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFF8C8A8A)),),
                          SizedBox(width: 149,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                isDone=!isDone;
                              });
                            },
                            child: Container(
                              width: 64,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: isDone ? Color(0xFFE3FFDA) : Color(0xFF78D956),
                                  borderRadius: BorderRadius.circular(8)),
                              alignment: Alignment.center,
                              child: Text('Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,  color: isDone ? Color(0xFFA3E58B) : Color(0xFFE3FFDA),),),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(height: 65,
                width:380 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                  color: Color(0xFF8C8A8A), // Border color
                            // Border width
                ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hepatitis B (HepB)',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Row(
                        children: [
                          Text('04-Jan-2024',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFF8C8A8A)),),
                          SizedBox(width: 149,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                isDone=!isDone;
                              });
                            },
                            child: Container(
                              width: 64,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: isDone ? Color(0xFFE3FFDA) : Color(0xFF78D956),
                                  borderRadius: BorderRadius.circular(8)),
                              alignment: Alignment.center,
                              child: Text('Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,  color: isDone ? Color(0xFFA3E58B) : Color(0xFFE3FFDA),),),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Image.asset(
                      width: 20,
                      "assets/Line 1.png"),
                  SizedBox(width: 8,),
                  Text('Month 2',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400, ),),
                  SizedBox(height: 8,),

                ],
              ),
              SizedBox(height: 8,),
              Container(height: 65,
                width:380 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF8C8A8A), // Border color
                    // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BCG (Bacillus Calmette Guerin) vaccine',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Row(
                        children: [
                          Text('04-Jan-2024',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFF8C8A8A)),),
                          SizedBox(width: 149,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                isDone=!isDone;
                              });
                            },
                            child: Container(
                              width: 64,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: isDone ? Color(0xFFE3FFDA) : Color(0xFF78D956),
                                  borderRadius: BorderRadius.circular(8)),
                              alignment: Alignment.center,
                              child: Text('Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,  color: isDone ? Color(0xFFA3E58B) : Color(0xFFE3FFDA),),),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(height: 65,
                width:380 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF8C8A8A), // Border color
                    // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hepatitis B (HepB)',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Row(
                        children: [
                          Text('04-Jan-2024',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFF8C8A8A)),),
                          SizedBox(width: 149,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                isDone=!isDone;
                              });
                            },
                            child: Container(
                              width: 64,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: isDone ? Color(0xFFE3FFDA) : Color(0xFF78D956),
                                  borderRadius: BorderRadius.circular(8)),
                              alignment: Alignment.center,
                              child: Text('Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,  color: isDone ? Color(0xFFA3E58B) : Color(0xFFE3FFDA),),),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(height: 65,
                width:380 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF8C8A8A), // Border color
                    // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hepatitis B (HepB)',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Row(
                        children: [
                          Text('04-Jan-2024',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFF8C8A8A)),),
                          SizedBox(width: 149,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                isDone=!isDone;
                              });
                            },
                            child: Container(
                              width: 64,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: isDone ? Color(0xFFE3FFDA) : Color(0xFF78D956),
                                  borderRadius: BorderRadius.circular(8)),
                              alignment: Alignment.center,
                              child: Text('Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,  color: isDone ? Color(0xFFA3E58B) : Color(0xFFE3FFDA),),),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),







            ],
          ),
        ),

      ],),


    );
  }
}
