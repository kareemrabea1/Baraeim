import 'package:baraeim/assets.dart';
import 'package:baraeim/base_page_as_pregrnant/presentation/pages/base_page_as_pregrnant.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class GrowthTestResult extends StatelessWidget {
  const GrowthTestResult({super.key, required this.hasDisease});

  final bool hasDisease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: ColorsApp.black,
          )),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text(
        'Autism Test',
        style: TextStyle(
          color: ColorsApp.textColor,
          fontSize: 15,
        ),
      ),
      centerTitle: true,
    ),
      body: Column(children: [
        Image.asset(Assets.babyGirl, height: 150, width: double.infinity,),
        const SizedBox(height: 20,),
        Text(hasDisease ? 'Has disease' : 'Not has disease',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        const Spacer(),
        InkWell(onTap: () {
          // SendQuestionAnswer.getHealthyDietData(id: 0);
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const BasePageAsPregrnant()));
        },

          child: Container(
            alignment: Alignment.center,
            height: 45,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorsApp.primary,
            ),
            child: const Text(
              'Done',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: ColorsApp.white),
            ),
          ),
        ),
const SizedBox(height: 30,)
      ],),
    );
  }
}
