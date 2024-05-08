// ignore_for_file: sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import '../styles/textstyle.dart';

class TextinputInInfo extends StatelessWidget {
  final String? Function(String?)? valid;
  final String maintext;
  final String helptext;
  final IconData? prfix;
  final Widget? suffi;
  final TextInputType textInputType;

  const TextinputInInfo({
    Key? key,
    required this.maintext,
    required this.helptext,
    this.prfix,
    this.suffi,
    required this.textInputType,
    this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    GlobalKey<FormState> _form = GlobalKey<FormState>();

    return Container(
      height: 65,
      width: 600,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14.0,

            // left: 14.0,
            // right: 14.0,
            // // bottom: 14.0,
          ),
          child: TextFormField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              prefixIcon: Icon(
                prfix,
                textDirection: TextDirection.rtl,
              ),
              suffix: suffi,
              hintText: helptext,
              hintStyle: o,
              hintTextDirection: TextDirection.rtl,
              border: OutlineInputBorder(
                // borderSide: BorderSide(strokeAlign: StrokeAlign.outside),
                borderRadius: BorderRadius.circular(
                  27.0,
                ),
              ),
              labelText: maintext,
              labelStyle: g,
            ),
            validator: valid,
          ),
        ),
      ),
    );
  }
}
