// import 'package:design/content.dart';
// import 'package:design/design.dart';
// import 'package:design/lessonDesin.dart';
// import 'package:design/loadingdesign.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const LessonDetailPage(),
//     );
//   }
// }

// ------------------------------------------------------------------------

import 'package:design/account.dart';
import 'package:design/content.dart';
import 'package:design/design.dart';
import 'package:design/difficult.dart';
import 'package:design/feedback.dart';
import 'package:design/firststep.dart';
import 'package:design/homepage.dart';
import 'package:design/informations.dart';
import 'package:design/instructions.dart';
import 'package:design/language.dart';
import 'package:design/lessonDesin.dart';
import 'package:design/list.dart';
import 'package:design/loadingdesign.dart';
import 'package:design/onboarding.dart';
import 'package:design/subjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ Import ScreenUtil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ), // ✅ Taille de design de référence (ex: Figma)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: LanguageSelectionDesign(selectedLanguage: '', isLoading: false, onLanguageSelected: (String p1) {  }, onContinuePressed: () {  },),
        );
      },
    );
  }
}
