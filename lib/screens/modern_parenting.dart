import 'package:flutter/material.dart';
class ModernParenting extends StatefulWidget {
  const ModernParenting({super.key});

  @override
  State<ModernParenting> createState() => _ModernParentingState();
}

class _ModernParentingState extends State<ModernParenting> {


  @override
  Widget build(BuildContext context) {

    const int tabsCount = 2;

    return DefaultTabController(
        initialIndex: 1,
        length: tabsCount,
      child:  Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 64,
            right: 60,
            top: 23,),
          child: Text('Modern parenting',style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E), ),),
        ),
        leading:Padding(
          padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
        // This check specifies which nested Scrollable's scroll notification
        // should be listened to.
        //
        // When `ThemeData.useMaterial3` is true and scroll view has
        // scrolled underneath the app bar, this updates the app bar
        // background color and elevation.
        //
        // This sets `notification.depth == 1` to listen to the scroll
        // notification from the nested `ListView.builder`.
        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },
        // The elevation value of the app bar when scroll view has
        // scrolled underneath the app bar.
       // scrolledUnderElevation: 4.0,
       // shadowColor:Color(0xFFF687B3),
        bottom:  TabBar(
          labelColor: Color(0xFFF687B3) ,
         indicatorColor: Color(0xFFF687B3),

          tabs: <Widget>[
            Tab(
              text:  'Modern parenting',
            ),
            Tab(
              text:  'People with special needs',
            ),
          ],
        ),
      ),
        body: TabBarView(
          children: [
            ListView.builder(itemCount: 1,
            itemBuilder: (BuildContext context, int index){
              return Padding(
            padding: const EdgeInsets.only(top:36,right: 33,left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children:[
                  Image.asset('assets/modern prenting1.png'),
                  Positioned(
                    top: 70,
                    left: 130,
                    child: Image.asset(
                        height: 40,
                        width: 40,
                        'assets/play video.png'),
                  ),

                ]
                ),
              const Text('Pregnancy yoga',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,),),
                const Text("""Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.""",
                style: TextStyle( color: Color(0xFF8C8A8A),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,),
                ),
                const SizedBox(height: 31,),
                Stack(children:[
                  Image.asset('assets/modern prenting2.png'),
                  Positioned(
                    top: 70,
                    left: 130,
                    child: Image.asset(
                        height: 40,
                        width: 40,
                        'assets/play video.png'),
                  ),

                ]
                ),
                const Text('Pregnancy yoga',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,),),
                const Text("""Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.""",
                  style: TextStyle( color: Color(0xFF8C8A8A),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,),
                ),



            ],),


          );

            },),
            ListView.builder(itemCount: 1,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.only(top:36,right: 33,left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children:[
                        Image.asset('assets/people with special1.png'),
                  Positioned(
                      top: 70,
                      left: 130,
                    child: Image.asset(
                      height: 40,
                        width: 40,
                        'assets/play video.png'),
                  ),

                      ]
                      ),
                      const Text('Pregnancy yoga',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,),),
                      const Text("""Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.""",
                        style: TextStyle( color: Color(0xFF8C8A8A),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,),
                      ),
                      const SizedBox(height: 31,),
                      Stack(children:[
                        Image.asset('assets/people  with special2.png'),
                        Positioned(
                          top: 70,
                          left: 130,
                          child: Image.asset(
                              height: 40,
                              width: 40,
                              'assets/play video.png'),
                        ),

                      ]
                      ),
                      const Text('Pregnancy yoga',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,),),
                      const Text("""Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.""",
                        style: TextStyle( color: Color(0xFF8C8A8A),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,),
                      ),



                    ],),


                );

              },),

        ],


        ),
      ),
    );


  }
}
