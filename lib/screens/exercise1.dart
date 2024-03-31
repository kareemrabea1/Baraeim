import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320.0,
            floating: true,
            pinned: true,
            title: Padding(
              padding: const EdgeInsets.only(left: 64,
                right: 64,
                top: 23,),
              child: Text('Daily  Exercise',style: TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E), ),),
            ),
            leading:Padding(
              padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {Navigator.pop(context);},
              ),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title:  const Text(''),
              background: Image.asset(
                'assets/image 10.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 34,top: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Viparita Karani",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xFFEC407A)),),
                      const SizedBox(height: 20,width: 90,),
                      Image.asset(
                        height: 24,
                          width: 24,
                          "assets/Iconsave.png"),
                      
                    ],
                  ),
                  const Text("""Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation. Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation. Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.

Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation. Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation. Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.""",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF8C8A8A)),),

                ],
              ),
            ),

          )

        ],
      ),








    );
  }
}
