// ignore_for_file: prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe
import 'package:akhawa/componts/drop.dart';
import 'package:akhawa/componts/dropcoins.dart';
import 'package:akhawa/componts/dropmoney.dart';
import 'package:akhawa/oo/myprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../componts/SpeicalButton.dart';
import '../componts/textformfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [
          Colors.black12,
          Colors.black26,
        ],
      ).createShader(rect),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.jpg',
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            key: _key,
            child: ListView(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/logo1.png',
                  ),
                  width: 250,
                  height: 200,
                ),
                SizedBox(
                  height: 10.0,
                ),
                // SizedBox(
                //   height: 15.0,
                // ),
                TextinputInInfo(
                  maintext: ' الاسم',
                  textInputType: TextInputType.name,
                  helptext: 'الاسم',
                  prfix: (Icons.person),
                  valid: ((p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'أكتب الاسم من فضلك';
                    }
                    return null;
                  }),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextinputInInfo(
                  textInputType: TextInputType.phone,
                  maintext: 'رقم تواصل',
                  helptext: 'رقم هاتفك',
                  prfix: (Icons.phone),
                  valid: (va) {
                    if (va!.length! <= 10) {
                      return "رقم الهاتف يجب ان يكون عشر ارقام";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'العنوان',
                        style: TextStyle(
                          fontFamily: ArabicFonts.Mirza,
                          package: 'google_fonts_arabic',
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                DropArea(),
                SizedBox(
                  height: 15.0,
                ),
                TextinputInInfo(
                  maintext: "الساحة/الشارع",
                  helptext: "معلومات أكثر",
                  prfix: (Icons.streetview),
                  textInputType: TextInputType.name,
                  valid: (ve) {
                    if (ve!.isEmpty) {
                      return 'الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextinputInInfo(
                  maintext: "بالقرب",
                  helptext: "معلومات أكثر",
                  prfix: (Icons.location_on),
                  textInputType: TextInputType.name,
                  valid: (ve) {
                    if (ve!.isEmpty) {
                      return 'الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'طريقة التبرع ',
                      style: TextStyle(
                        fontFamily: ArabicFonts.Mirza,
                        package: 'google_fonts_arabic',
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                DropCoins(),
                SizedBox(
                  height: 15.0,
                ),
                DropMoney(),
                SizedBox(
                  height: 15.0,
                ),
                TextinputInInfo(
                  maintext: 'قيمة التبرع الاخر',
                  helptext: "رقماً بالليرة السورية ",
                  prfix: (Icons.attach_money),
                  textInputType: TextInputType.number,
                  valid: (ve) {
                    if (ve!.isEmpty) {
                      return 'الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SpeicalButton(tap: () {
                  if (_key.currentState!.validate()) {
                    _key.currentState?.save();
                    Navigator.push(
                        context,
                        PageTransition(
                            child: PageResult(),
                            type: PageTransitionType.leftToRight));
                  }
                }),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
