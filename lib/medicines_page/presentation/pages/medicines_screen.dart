import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import 'package:baraeim/medicines_page/presentation/widgets/card_medicine.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_medicine_diets_model.dart';
import '../../domain/repositories/fetch_medicine_repository.dart';

class MedicinesScreen extends StatefulWidget {
  const MedicinesScreen({super.key});

  @override
  State<MedicinesScreen> createState() => _MedicinesScreenState();
}

List<AllMedicineModel> medicineDetails = [
  AllMedicineModel(
    id: 1,
    image:
        'https://cdn.altibbi.com/cdn/cache/large/image/2021/08/30/116fc7c6b0f2daa39b0841a83f0a9499.webp',
    title:
        'دواء هاي دي للحامليعد دواءHi Dee مناسب للمرأة في فترات الحمل والاستعداد للحمل، كونه يمدها باحتياجها من فيتامين د3، يحدد الطبيب الجرعة اللازمة تبعاً لشهور الحمل وحالة كل امرأة:اقرا المزيد من خلال موقع الطبي',
    name: 'Hi Dee',
  ),
  AllMedicineModel(
    id: 2,
    image:
        'https://cdn.chefaa.com/filters:format(webp)/fit-in/718x718/public/uploads/products/1615288987%D8%A8%D8%B1%D9%8A%D8%AC%D9%86%D8%A7%D9%83%D9%8A%D8%B1-%D8%A3%D9%82%D8%B1%D8%A7%D8%B5png',
    title:
        'يحتوي على 19 فيتامين ومعادن مهمة مثل فيتامين ب 12 وحمض الفوليك ، مزيج آمن ومتوازن متوافق مع الحمل. لحماية طفلك الذي ينمو ، يتجنب بريجناكير المستويات الزائدة من الحديد والمواد المغذية الأخرى.لا يحتوي بريجناكير على فيتامين أ ، حيث لا ينصح بتناول مستويات عالية منه أثناء الحمل. مناسب للنباتيين.   لم تختبر على الحيوانات.بدون ملح مضاف يتم تناوله مع كمية كافية من الماء بعد الوجبة الرئيسية.',
    name: 'Pregnacare vitamin ',
  )
];

fetchData() async {
  FetchAllMedicineRepository fetchAllHealthyDietsRepository =
      FetchAllMedicineRepository();
  medicineDetails = await fetchAllHealthyDietsRepository.getAllMedicine();
}

class _MedicinesScreenState extends State<MedicinesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextField(
              controller: controller,
              cursorColor: ColorsApp.primary,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsApp.textColor,
                ),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.textColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .72,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return CardMedicine(
                    medicine: medicineDetails[index],
                  );
                },
                itemCount: medicineDetails.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
