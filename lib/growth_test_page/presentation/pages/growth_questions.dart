import 'package:baraeim/colors_app.dart';
import 'package:baraeim/growth_test_page/data/data_sources/send_question_answer.dart';
import 'package:baraeim/growth_test_page/presentation/pages/growth_test_result.dart';
import 'package:baraeim/growth_test_page/presentation/widgets/card_question.dart';
import 'package:baraeim/growth_test_page/presentation/widgets/radio_button.dart';
import 'package:flutter/material.dart';

class GrowthQuestions extends StatelessWidget {
  const GrowthQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    for(int i=0;i<QuestionModel.questions.length;i++){
      QuestionModel.questions[i].answer=null;
    }
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return CardQuestion(index:index,question: QuestionModel.questions[index],
                  onTap: (value) {
                    QuestionModel.questions[index].answer = value;
                    print(QuestionModel.questions[index].answer);
                  },
                  );
                },
                itemCount: QuestionModel.questions.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 30,);
                },
              ),
            ),
            const SizedBox(height: 20,),
            InkWell(onTap: () {
              int sum=0;
              for(int i=0;i<QuestionModel.questions.length-2;i++){
                if (QuestionModel.questions[i].answer!=null) {
                  sum=sum+QuestionModel.questions[i].answer!;
                }
              }
              // SendQuestionAnswer.getHealthyDietData(id: 0);
              print('abdo $sum');
              print(QuestionModel.questions[5].answer);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>   GrowthTestResult(hasDisease:sum>=6)));


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
                  'Continue',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: ColorsApp.white),
                ),
              ),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}






class QuestionModel{

  int? answer;
  int? id;
  String ?question;
  bool isBoolean;
  QuestionModel({
    this.answer,
    this.id,
   required this.question,
    this.isBoolean=true,
});



 static List<QuestionModel> questions=[
    QuestionModel(id:1,question: 'What is the gender of the patient?',),
    QuestionModel(id:2,question: 'Do you find it difficult to understand people\'s feelings from their facial expressions?',),
    QuestionModel(id:3,question: 'Do you prefer to do daily activities alone without interacting with others?',),
  QuestionModel(id:4,question: 'Do you find it hard to start a conversation with new people?',),
    QuestionModel(id:5,question:'Do you prefer things to be neat and organized precisely?' ,),
    QuestionModel(id:6,question:'Do you find it difficult to follow a conversation when there is a lot of background noise?' ,),
    QuestionModel(id:7,question:'Do you feel uncomfortable when your daily routine changes?' ,),
    QuestionModel(id:8,question:'Do you find it hard to understand jokes or sarcastic comments?' ,),
    QuestionModel(id:9,question:'Do you find it difficult to make new friends?' ,),
    QuestionModel(id:10,question:'Do you feel stressed or anxious in crowded or busy places?' ,),
    QuestionModel(id:11,question:'Did the patient have jaundice at birth?' ,),
    QuestionModel(id:12,question:'Has any immediate family member of the patient been diagnosed with autism?' ,),
    QuestionModel(id:13,question:'What is the age of the patient?' ,isBoolean: false,),
    QuestionModel(id:14,question:'What is the ethnicity of the patient?' ,isBoolean: false,),
  ];

}
