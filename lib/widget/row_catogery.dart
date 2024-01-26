import 'package:baraeim/models/item_row.dart';
import 'package:baraeim/screens/exercise1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowCatogery extends StatefulWidget {
  const RowCatogery({super.key,required this.itemRow});
  final ItemRow itemRow;

  @override
  State<RowCatogery> createState() => _RowCatogeryState();
}

class _RowCatogeryState extends State<RowCatogery> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 31,left: 28),
          child: Image.asset(
              height: 34,
              width: 55,
              widget.itemRow.image),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27,left: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(

                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise1()));


                },
                child:Text(widget.itemRow.Text1,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
              ),

              Text(widget.itemRow.Text2,style: const TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xFF8C8A8A)),),

            ],
          ),
        )


      ],
    );
  }
}
