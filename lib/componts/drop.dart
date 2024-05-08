import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../styles/textstyle.dart';

class DropArea extends StatefulWidget {
  const DropArea({super.key});

  @override
  State<DropArea> createState() => _DropAreaState();
}

class _DropAreaState extends State<DropArea> {
  List<String> area = [
    'العباسيين',
    'أبو رمانة',
    'البرامكة',
    'الحريقة',
    'الشعلان',
    'العمارة',
    'الميدان',
    'المزرعة',
    'كفرسوسة',
    "المزة"
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 600,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(
          27.0,
        ),
        // border: Border.all(color: Colors.blueGrey),
      ),
      margin: EdgeInsets.all(15),
      child: DropdownButtonHideUnderline(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButton2(
            iconOnClick: Icon(Icons.arrow_left),
            icon: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Icon(Icons.arrow_drop_down_sharp),
              ),
            ),
            buttonDecoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(
                27.0,
              ),
            ),
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                27.0,
              ),
            ),
            dropdownDirection: DropdownDirection.right,
            dropdownPadding: null,
            hint: Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
              ),
              child: Row(
                children: [
                  Text(
                    "اختر المنطقة",
                    style: g,
                  ),
                ],
              ),
            ),
            items: area
                .map(
                  (item) => DropdownMenuItem<String>(
                    alignment: Alignment.centerRight,
                    value: item,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 15.0,
                      ),
                      child: Text(item, style: opp),
                    ),
                  ),
                )
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(
                () {
                  selectedValue = value as String;
                },
              );
            },
            buttonHeight: 40,
            buttonWidth: 200,
            itemHeight: 40,
            dropdownMaxHeight: 200.0,
          ),
        ),
      ),
    );
  }
}
