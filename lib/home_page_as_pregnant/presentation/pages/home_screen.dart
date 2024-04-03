import 'dart:async';

import 'package:baraeim/assets.dart';
import 'package:baraeim/home_page/data/models/sevices_model.dart';
import 'package:baraeim/home_page/presentation/widgets/header_home_screen.dart';
import 'package:baraeim/home_page/presentation/widgets/pregrnant_dialog.dart';
import 'package:flutter/material.dart';

import '../../../colors_app.dart';
import '../../../healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import '../../../listhome_for_artical.dart';
import '../widgets/card_baby_details.dart';

class HomeScreenAsPregnant extends StatefulWidget {
  const HomeScreenAsPregnant({super.key});

  @override
  State<HomeScreenAsPregnant> createState() => _HomeScreenAsPregnantState();
}

class _HomeScreenAsPregnantState extends State<HomeScreenAsPregnant> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 10),() {
    //
    // },);
    Timer.periodic(const Duration(minutes: 20), (timer) {
      showDialog(
        context: context,
        builder: (context) {
          return const PregnantDialog();
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  color: ColorsApp.primary.withOpacity(0.3)),
              child: Row(
                children: [
                  Image.asset(Assets.imageBaby),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Jun 23,20204 years',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Image.asset(Assets.birthDayImage),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorsApp.primary),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Blood Group',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: ColorsApp.white),
                                ),
                                Text(
                                  'B+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorsApp.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorsApp.primary),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: ColorsApp.white),
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorsApp.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Basic Details ',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Modern parenting',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 211,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              ContantModel.listBaby[index].image,
                            ),
                          ),
                        ),
                        child: ContantModel.listBaby[index].isVideo
                            ? Image.asset(Assets.videoImage)
                            : const SizedBox.shrink(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        ContantModel.listBaby[index].text,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorsApp.black,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: ContantModel.listBaby.length),
          ],
        ),
      ),
    );
  }
}
