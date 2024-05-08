import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../styles/textstyle.dart';

class DropMoney extends StatefulWidget {
  const DropMoney({super.key});

  @override
  State<DropMoney> createState() => _DropMoneyState();
}

class _DropMoneyState extends State<DropMoney> {
  String? selectedValue;
  List<String> moneyType = [
    "خمسين الف ليرة",
    "مئة الف ليرة",
    "مئة وخمسين الف ليرة",
    "مئتان الف ليرة",
    "غير ذلك",
  ];

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
                    "قيمة التبرع",
                    style: g,
                  ),
                ],
              ),
            ),
            items: moneyType
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
