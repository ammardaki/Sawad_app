// ignore_for_file: annotate_overrides

import 'package:flutter/cupertino.dart';

class Note with ChangeNotifier {
  String? selectedValue;
  VoidCallback? callback;
  List<String> moneyType = [
    "خمسين الف ليرة",
    "مئة الف ليرة",
    "مئة وخمسين الف ليرة",
    "مئتان الف ليرة",
    "غير ذلك",
  ];
  List<String> get type => moneyType;
  set Changeitem(String val) {
    selectedValue = val;
    // selectedValue.callback = () => notifyListeners();
  }

  notifyListeners();
  List<String> paytool = [
    'الدفع الالكتروني',
    'تسليم للمتطوع',
  ];
}
