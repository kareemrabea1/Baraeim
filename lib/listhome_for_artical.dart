import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ListHomeForArtical extends StatelessWidget {
  const ListHomeForArtical({super.key, required this.list,  this.isScroll=false});

  final List<ContantModel> list;
  final bool isScroll;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: isScroll?NeverScrollableScrollPhysics():BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () async {
              print('abdo');
              await launchUrl(Uri.parse(list[index].link));
            },
            child: Column(
              children: [
                Container(
                  height: 211,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                          list[index].image,

                        ),

                        fit: BoxFit.fill),
                  ),
                  child: list[index].isVideo
                      ? Image.asset(
                          Assets.videoImage,
                        )
                      : const SizedBox.shrink(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  list[index].text,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorsApp.black,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: list.length);
  }
}

class ContantModel {
  String image;
  String text;
  String link;
  bool isVideo;

  ContantModel({
    required this.image,
    required this.text,
    this.isVideo = false,
    this.link = '',
  });

  static List<ContantModel> listArticles = [
    ContantModel(
        image:
            'https://images.theconversation.com/files/595884/original/file-20240523-17-zm5z9h.jpg?ixlib=rb-4.1.0&rect=0%2C655%2C5973%2C2982&q=45&auto=format&w=668&h=324&fit=crop',
        link:
            "https://theconversation.com/lifes-big-moments-can-impact-an-entrepreneurs-success-but-not-always-in-the-way-youd-expect-230436",
        text:
            'Life’s big moments can impact an entrepreneur’s success – but not always in the way you’d expect'),
    ContantModel(
        image:
            "https://images.theconversation.com/files/522514/original/file-20230424-18-hqb686.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=240&h=240&fit=crop",
        link:
            "https://theconversation.com/wanted-family-friendly-apartments-but-what-do-families-want-from-apartments-203921",
        text:
            'Wanted: family-friendly apartments. But what do families want from apartments?'),
    ContantModel(
        image:
            "https://images.theconversation.com/files/471390/original/file-20220628-19-cvno5g.jpg?ixlib=rb-4.1.0&rect=1652%2C0%2C4325%2C4325&q=45&auto=format&w=240&h=240&fit=crop",
        link:
            "https://theconversation.com/plurilingual-parenting-why-many-experts-think-families-who-speak-multiple-languages-should-just-go-with-the-flow-185255",
        text:
            'Plurilingual parenting: why many experts think families who speak multiple languages should just go with the flow'),
  ];
  static List<ContantModel> listBaby = [
    ContantModel(
        image:
            'https://images.theconversation.com/files/601740/original/file-20240619-19-hdaiij.jpg?ixlib=rb-4.1.0&rect=8%2C131%2C1000%2C499&q=45&auto=format&w=668&h=324&fit=crop',
        link:
            'https://theconversation.com/chiropractors-have-been-banned-again-from-manipulating-babies-spines-heres-what-the-evidence-actually-says-232721',
        text:
            'Chiropractors have been banned again from manipulating babies’ spines. Here’s what the evidence actually says'),
    ContantModel(
        image:
            'https://images.theconversation.com/files/599953/original/file-20240611-17-2cc6kt.jpg?ixlib=rb-4.1.0&rect=549%2C0%2C2909%2C2909&q=45&auto=format&w=240&h=240&fit=crop',
        link:
            'https://theconversation.com/the-key-to-raising-secure-children-why-parental-sensitivity-matters-for-fathers-and-mothers-230081',
        text:
            'The key to raising secure children: Why parental sensitivity matters for fathers and mothers'),
    ContantModel(
        image:
            'https://images.theconversation.com/files/574801/original/file-20240211-29-lmr4xk.jpg?ixlib=rb-4.1.0&rect=2002%2C0%2C3997%2C3997&q=45&auto=format&w=240&h=240&fit=crop',
        link:
            "https://theconversation.com/do-we-really-need-to-burp-babies-heres-what-the-research-says-223306",
        text:
            'Do we really need to burp babies? Here’s what the research says'),
  ];
  static List<ContantModel> listModernparenting = [
    ContantModel(
      isVideo: true,
      image:
          'https://singjupost.com/wp-content/uploads/2023/10/Nichola-Raihani-TEDxManchester.jpg',
      link: "https://youtu.be/GO7j0bJOLaU?si=1LQFYJj9cgyvERvt",
      text: 'The real reason modern parenting is so hard',
    ),
    ContantModel(
        isVideo: true,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP38Rk8bzEyu00EFntCapOBg0SswHX8oVoQPhI1AhXhDL4hYHVh1ZXxCCuyhumtxdGpsQ&usqp=CAU',
        link: 'https://youtu.be/RMxqTXgRO9E?si=j0aTSZtDzXyBhJtf',
        text: 'Parenting Styles'),
    ContantModel(
        isVideo: true,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrYccUH6HytnI7KBLklK5fWPa8p0_DrDkUqsSnUjvRJk6r00FC7p14rKIafNjbJKaTmFE&usqp=CAU',
        link: 'https://youtu.be/gz0VCp-7ugM?si=xBWC4NOgYVUF0KdE',
        text: 'MODERN PARENTING VS TRADITIONAL PARENTING'),
    ContantModel(
        isVideo: true,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSINkBr2tqaHVjb_lCarOEIqbbB0g5-2giNgbUxOVotlrUE4tis0k6xerhEs3OplmuJ44Q&usqp=CAU',
        link: 'https://youtu.be/Qv_ZaN20PqE?si=f13bxhcPUZck_z4Q',
        text: 'How To Raise Kids You Actually Like'),
  ];
  static List<ContantModel> listPregrnant = [
    ContantModel(
        image:
            'https://magazine.medlineplus.gov/images/uploads/main_images/Closeup_Pregnant_Woman.jpg',
        link:
            'https://magazine.medlineplus.gov/article/pregnancy-related-deaths-are-on-the-rise-and-sepsis-is-a-big-reason/',
        text:
            'Pregnancy-related deaths are on the rise…and sepsis is a big reason'),
    ContantModel(
        image:
            'https://magazine.medlineplus.gov/images/uploads/main_images/pregSource980x587.jpg',
        link:
            'https://magazine.medlineplus.gov/article/pregsource-using-input-from-pregnant-people-to-uncover-the-secrets-of-pregnancy/',
        text:
            'PregSource: Using input from pregnant people to uncover the secrets of pregnancy'),
    ContantModel(
        image:
            'https://magazine.medlineplus.gov/images/uploads/main_images/mavis-stephens.jpg',
        link:
            'https://magazine.medlineplus.gov/article/mother-spreads-awareness-after-multiple-preeclampsia-diagnoses/',
        text: 'Mother spreads awareness after multiple preeclampsia diagnoses'),
  ];
}
