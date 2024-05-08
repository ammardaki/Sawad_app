import 'package:akhawa/styles/textstyle.dart';
import 'package:flutter/material.dart';

class PageResult extends StatelessWidget {
  const PageResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "تم التبرع جزيتم خير",
        style: g,
      ),
    ));
  }
}
