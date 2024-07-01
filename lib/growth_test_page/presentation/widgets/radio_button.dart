import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key, this.isActive = false, required this.title, required this.id, required this.onTap});
final String title;
final int  id;
  final bool isActive;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(onTap: () {
          onTap(id);
        },
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              color:  ColorsApp.white,
              shape: BoxShape.circle,
              border: Border.all(color:isActive ? ColorsApp.primary : ColorsApp.black, width: 2),
            ),
            width: 20,
            child: Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: isActive ? ColorsApp.primary : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
         Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
