// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../styles/textstyle.dart';

class SpeicalButton extends StatelessWidget {
  final void Function()? tap;
  const SpeicalButton({
    Key? key,
    this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: tap,
        child: Container(
          margin: EdgeInsets.all(8.0),
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromRGBO(104, 65, 50, 1),
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "تبرع",
                  style: obutton,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
