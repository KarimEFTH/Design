// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NameYourHomeworkPage extends StatefulWidget {
//   const NameYourHomeworkPage({super.key});

//   @override
//   State<NameYourHomeworkPage> createState() => _NameYourHomeworkPageState();
// }

// class _NameYourHomeworkPageState extends State<NameYourHomeworkPage> {
//   final TextEditingController _nameController = TextEditingController();
//   String _selectedSubject = 'English';

//   final List<String> _subjects = [
//     'English',
//     'Math',
//     'Science',
//     'History',
//     'Geography',
//     'Physics',
//     'Chemistry',
//     'Biology',
//   ];

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/backgroundBlanch.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // AppBar personnalisé
//               Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 16.w,
//                       right: 16.w,
//                       top: 24.h,
//                       bottom: 12.h,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Icon(
//                             Icons.chevron_left,
//                             color: Colors.black,
//                             size: 20.sp,
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             // Action fermer
//                           },
//                           child: Icon(
//                             Icons.close,
//                             color: Colors.black,
//                             size: 20.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(height: 1.h, color: Color(0xFFEDF0EF)),
//                 ],
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Spacer(),

//                       // === Titre ===
//                       Text(
//                         'Name your homework',
//                         style: TextStyle(
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),

//                       SizedBox(height: 32.h),

//                       // === Label "Nom" ===
//                       Text(
//                         'Nom',
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 8.h),

//                       // === TextField "Nom" ===
//                       TextField(
//                         controller: _nameController,
//                         style: TextStyle(fontSize: 16.sp, color: Colors.black),
//                         decoration: InputDecoration(
//                           hintText: 'English homework',
//                           hintStyle: TextStyle(
//                             fontSize: 16.sp,
//                             color: Color(0xFF9CA3AF),
//                           ),
//                           filled: true,
//                           fillColor: Colors.white,
//                           contentPadding: EdgeInsets.symmetric(
//                             horizontal: 16.w,
//                             vertical: 12.h,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                             borderSide: BorderSide(
//                               color: Color(0xFFE5E7EB),
//                               width: 1.w,
//                             ),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                             borderSide: BorderSide(
//                               color: Color(0xFFE5E7EB),
//                               width: 1.w,
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1.w,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 32.h),

//                       // === Label "Subject" ===
//                       Text(
//                         'Subject',
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 8.h),

//                       // === Dropdown "Subject" ===
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(8.r),
//                           border: Border.all(
//                             color: Color(0xFFE5E7EB),
//                             width: 1.w,
//                           ),
//                         ),
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton<String>(
//                             value: _selectedSubject,
//                             isExpanded: true,
//                             icon: Padding(
//                               padding: EdgeInsets.only(right: 0.w),
//                               child: Icon(
//                                 Icons.keyboard_arrow_down,
//                                 color: Colors.black,
//                                 size: 24.sp,
//                               ),
//                             ),
//                             padding: EdgeInsets.only(
//                               left: 16.w,
//                               top: 4.h,
//                               right: 12.w,
//                               bottom: 4.h,
//                             ),
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               color: Colors.black,
//                               fontWeight: FontWeight.normal,
//                             ),
//                             borderRadius: BorderRadius.circular(8.r),
//                             dropdownColor: Colors.white,
//                             items: _subjects.map((String subject) {
//                               return DropdownMenuItem<String>(
//                                 value: subject,
//                                 child: Text(subject),
//                               );
//                             }).toList(),
//                             onChanged: (String? newValue) {
//                               if (newValue != null) {
//                                 setState(() {
//                                   _selectedSubject = newValue;
//                                 });
//                               }
//                             },
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 32.h),
//                       // Spacer(),

//                       // === Bouton "Continuer" ===
//                       SizedBox(
//                         width: double.infinity,
//                         height: 56.h,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Action continuer
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             // padding: EdgeInsets.symmetric(
//                             //   vertical: 12.h,
//                             //   horizontal: 12.w,
//                             // ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Continuer',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// -------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NameDictationPage extends StatefulWidget {
//   const NameDictationPage({super.key});

//   @override
//   State<NameDictationPage> createState() => _NameDictationPageState();
// }

// class _NameDictationPageState extends State<NameDictationPage> {
//   final TextEditingController _nameController = TextEditingController();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // AppBar personnalisé
//             Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 16.w,
//                     right: 16.w,
//                     top: 24.h,
//                     bottom: 12.h,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Icon(
//                           Icons.chevron_left,
//                           color: Colors.black,
//                           size: 20.sp,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           // Action fermer
//                         },
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.black,
//                           size: 20.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(height: 1.h, color: Color(0xFFEDF0EF)),
//               ],
//             ),

//             // Contenu principal
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Spacer(),

//                     // Titre
//                     Text(
//                       'Name your dictation',
//                       style: TextStyle(
//                         fontSize: 28.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),

//                     SizedBox(height: 48.h),

//                     // Label "Nom"
//                     Text(
//                       'Nom',
//                       style: TextStyle(
//                         fontSize: 16.sp,
//                         color: Colors.black,
//                         height: 1.5,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     // Champ de texte
//                     TextField(
//                       controller: _nameController,
//                       style: TextStyle(fontSize: 16.sp, color: Colors.black),
//                       decoration: InputDecoration(
//                         hintText: 'Dictation about frogs',
//                         hintStyle: TextStyle(
//                           fontSize: 16.sp,
//                           color: Color(0xFF9CA3AF),
//                         ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         contentPadding: EdgeInsets.symmetric(
//                           horizontal: 16.w,
//                           vertical: 12.h,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30.r),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE5E7EB),
//                             width: 1.w,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30.r),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE5E7EB),
//                             width: 1.w,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30.r),
//                           borderSide: BorderSide(
//                             color: Colors.black,
//                             width: 1.w,
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 32.h),

//                     // Bouton Continuer
//                     SizedBox(
//                       width: double.infinity,
//                       height: 56.h,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Action du bouton
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                           ),
//                           elevation: 0,
//                         ),
//                         child: Text(
//                           'Continuer',
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// -----------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DictationPreferencesPage extends StatefulWidget {
//   const DictationPreferencesPage({super.key});

//   @override
//   State<DictationPreferencesPage> createState() =>
//       _DictationPreferencesPageState();
// }

// class _DictationPreferencesPageState extends State<DictationPreferencesPage> {
//   String _selectedWordCount = '100 words';
//   String _selectedDifficulty = 'Difficult';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/BackgroundBlanch.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // AppBar personnalisé
//               Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 16.w,
//                       right: 16.w,
//                       top: 24.h,
//                       bottom: 12.h,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Icon(
//                             Icons.chevron_left,
//                             color: Colors.black,
//                             size: 20.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(height: 1.h, color: Color(0xFFEDF0EF)),
//                 ],
//               ),

//               // Contenu principal
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Spacer(),

//                       // Titre principal
//                       Text(
//                         'Dictation\npréférences',
//                         style: TextStyle(
//                           fontSize: 32.sp,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           height: 1.1,
//                         ),
//                       ),

//                       SizedBox(height: 8.h),

//                       // Sous-titre
//                       Text(
//                         'Dictées personnalisées et correction',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Color(0xFF6B7280),
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 32.h),

//                       // Label "Nombre de words"
//                       Text(
//                         'Nombre de words',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 12.h),

//                       // Boutons nombre de mots
//                       _buildOptionButton('25 words', _selectedWordCount, (
//                         value,
//                       ) {
//                         setState(() {
//                           _selectedWordCount = value;
//                         });
//                       }),

//                       SizedBox(height: 12.h),

//                       _buildOptionButton('40 words', _selectedWordCount, (
//                         value,
//                       ) {
//                         setState(() {
//                           _selectedWordCount = value;
//                         });
//                       }),

//                       SizedBox(height: 12.h),

//                       _buildOptionButton('100 words', _selectedWordCount, (
//                         value,
//                       ) {
//                         setState(() {
//                           _selectedWordCount = value;
//                         });
//                       }),

//                       SizedBox(height: 32.h),

//                       // Label "Choose difficulté"
//                       Text(
//                         'Choose difficulté',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 12.h),

//                       // Boutons difficulté
//                       _buildOptionButton('Easy', _selectedDifficulty, (value) {
//                         setState(() {
//                           _selectedDifficulty = value;
//                         });
//                       }),

//                       SizedBox(height: 12.h),

//                       _buildOptionButton('Intermediate', _selectedDifficulty, (
//                         value,
//                       ) {
//                         setState(() {
//                           _selectedDifficulty = value;
//                         });
//                       }),

//                       SizedBox(height: 12.h),

//                       _buildOptionButton('Difficult', _selectedDifficulty, (
//                         value,
//                       ) {
//                         setState(() {
//                           _selectedDifficulty = value;
//                         });
//                       }),

//                       SizedBox(height: 32.h),

//                       // Bouton "Générer la dictée"
//                       SizedBox(
//                         width: double.infinity,
//                         height: 56.h,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Action générer
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Générer la dictée',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildOptionButton(
//     String text,
//     String selectedValue,
//     Function(String) onTap,
//   ) {
//     final bool isSelected = text == selectedValue;

//     return GestureDetector(
//       onTap: () => onTap(text),
//       child: Container(
//         width: double.infinity,
//         height: 48.h,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(30.r),
//           border: Border.all(
//             color: Colors.black,
//             width: isSelected ? 2.5.w : 1.w,
//           ),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w500,
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
