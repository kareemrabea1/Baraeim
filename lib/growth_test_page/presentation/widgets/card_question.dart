import 'package:baraeim/colors_app.dart';
import 'package:baraeim/growth_test_page/presentation/pages/growth_questions.dart';
import 'package:baraeim/growth_test_page/presentation/widgets/radio_button.dart';
import 'package:flutter/material.dart';

import '../../../profile_page/presentation/widgets/custom_text_field.dart';

class CardQuestion extends StatefulWidget {
  const CardQuestion(
      {super.key,
      required this.index,


      required this.question, required this.onTap});

  final int index;
  final QuestionModel question;
  final Function(int) onTap;



  @override
  State<CardQuestion> createState() => _CardQuestionState();
}



class _CardQuestionState extends State<CardQuestion> {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${widget.index + 1}. ${widget.question.question}'),
        const SizedBox(
          height: 8,
        ),
        widget.question.isBoolean
            ? Row(
                children: [
                  CustomRadioButton(
                    title: 'yes',
                    isActive: widget.question.answer == 1,
                    id: 1,
                    onTap: (value) {
                      widget.onTap(value);

                      setState(() {});
                    },
                  ),
                  const Spacer(flex: 1),
                  CustomRadioButton(
                    title: "No",
                    isActive: widget.question.answer == 0,
                    id: 0,
                    onTap: (value) {
                      widget.onTap(value);

                      setState(() {});
                    },
                  ),
                  const Spacer(flex: 5),
                ],
              )
            : TextFormField(
                controller: TextEditingController(text:widget.question.answer==null? '': widget.question.answer.toString()),
                decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    fillColor: ColorsApp.secondary.withOpacity(0.6),
                    filled: true),
                onChanged: (value) {
                  widget.question.answer = int.parse(value);
                  setState(() {});
                },
              ),
      ],
    );
  }
}
