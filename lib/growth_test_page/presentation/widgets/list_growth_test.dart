import 'package:baraeim/growth_test_page/presentation/pages/growth_questions.dart';
import 'package:flutter/material.dart';

import '../../../colors_app.dart';
import 'card_growth_test.dart';

class ListGrowthTest extends StatelessWidget {
  const ListGrowthTest({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return   Container(
      height: size.height - 150,
      decoration: const BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(48),
        ),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 34,
          ),
          ListView.separated(
            itemBuilder: (context, index) {
              return CardGrowthTest(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GrowthQuestions(),));

                },
                  number: index + 1, test: 'Autism Test');
            },
            separatorBuilder: (context, index) =>
            const SizedBox(height: 14),
            itemCount: 1,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
