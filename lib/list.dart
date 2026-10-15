// import 'package:flutter/material.dart';

// class DictationListPage extends StatelessWidget {
//   const DictationListPage({Key? key}) : super(key: key);

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             // Action retour
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Card verte "New dictation"
//             Container(
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [Color(0xFF4ADE80), Color(0xFF6EE7B7)],
//                 ),
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 15,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 48,
//                     height: 48,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(Icons.add, color: Color(0xFF4ADE80), size: 28),
//                   ),
//                   SizedBox(width: 16),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'New dictation',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           'Add your words to generate a dictation',
//                           style: TextStyle(fontSize: 14, color: Colors.black87),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24),
//             // Titre "Your past homework lessons"
//             Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 16),
//             // Liste des dictées
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dictations.length,
//                 itemBuilder: (context, index) {
//                   return _buildDictationCard(
//                     dictations[index]['title'],
//                     dictations[index]['date'],
//                     dictations[index]['points'],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDictationCard(String title, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Color(0xFFE5E7EB), width: 1),
//       ),
//       child: Row(
//         children: [
//           // Icône verte avec bordure
//           Container(
//             width: 56,
//             height: 56,
//             decoration: BoxDecoration(
//               color: Color(0xFFD1D5DB),
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(color: Color(0xFF10B981), width: 3),
//             ),
//           ),
//           SizedBox(width: 12),
//           // Titre et date
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   date,
//                   style: TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
//                 ),
//               ],
//             ),
//           ),
//           // Badge points
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//             decoration: BoxDecoration(
//               color: Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DictationListPage extends StatelessWidget {
//   const DictationListPage({Key? key}) : super(key: key);

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             // Action retour
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Card verte "New dictation"
//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [Color(0xFF4ADE80), Color(0xFF6EE7B7)],
//                 ),
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.4),
//                     blurRadius: 24,
//                     spreadRadius: 2,
//                     offset: const Offset(0, 8),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 48,
//                     height: 48,
//                     decoration: const BoxDecoration(
//                       color: Colors.black,
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Icon(
//                       Icons.add,
//                       color: Color(0xFF4ADE80),
//                       size: 28,
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           'New dictation',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           'Add your words to generate a dictation',
//                           style: TextStyle(fontSize: 14, color: Colors.black87),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),
//             // Titre "Your past homework lessons"
//             const Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 16),
//             // Liste des dictées
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dictations.length,
//                 itemBuilder: (context, index) {
//                   return _buildDictationCard(
//                     dictations[index]['title'],
//                     dictations[index]['date'],
//                     dictations[index]['points'],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDictationCard(String title, String date, String points) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.25),
//             blurRadius: 8,
//             spreadRadius: 1,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Icône verte avec bordure
//           Container(
//             width: 56,
//             height: 56,
//             decoration: BoxDecoration(
//               color: const Color(0xFFD1D5DB),
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(color: const Color(0xFF10B981), width: 3),
//             ),
//           ),
//           const SizedBox(width: 12),
//           // Titre et date
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   date,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     color: Color(0xFF6B7280),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Badge points
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.3),
//                   blurRadius: 6,
//                   offset: const Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: Text(
//               points,
//               style: const TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DictationListPage extends StatelessWidget {
//   const DictationListPage({Key? key}) : super(key: key);

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'title': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'title': 'Dictation about rain',
//       'date': '20 February 2025',
//       'points': '3 points earned!',
//     },
//     {
//       'title': 'Dictation about school',
//       'date': '4 March 2025',
//       'points': '4 points earned!',
//     },
//     {
//       'title': 'Dictation about seasons',
//       'date': '15 April 2025',
//       'points': '1 point earned!',
//     },
//     {
//       'title': 'Dictation about travel',
//       'date': '2 May 2025',
//       'points': '5 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // ===================== New Dictation CARD =====================
//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [Color(0xFF4ADE80), Color(0xFF6EE7B7)],
//                 ),
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26, // même style que le header
//                     blurRadius: 12,
//                     offset: const Offset(0, 6),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 48,
//                     height: 48,
//                     decoration: const BoxDecoration(
//                       color: Colors.black,
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Icon(
//                       Icons.add,
//                       color: Color(0xFF4ADE80),
//                       size: 28,
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   const Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'New dictation',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           'Add your words to generate a dictation',
//                           style: TextStyle(fontSize: 14, color: Colors.black87),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 24),

//             // ===================== Title =====================
//             const Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),

//             const SizedBox(height: 16),

//             // ===================== List =====================
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dictations.length,
//                 itemBuilder: (context, index) {
//                   return _buildDictationCard(
//                     dictations[index]['title']!,
//                     dictations[index]['date']!,
//                     dictations[index]['points']!,
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDictationCard(String title, String date, String points) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 14),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         // 👇 même shadow que le header
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black26, // gris doux
//             blurRadius: 12,
//             offset: Offset(0, 6), // vers le bas pour effet naturel
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Icône verte avec bordure
//           Container(
//             width: 56,
//             height: 56,
//             decoration: BoxDecoration(
//               color: const Color(0xFFE5E7EB),
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(color: const Color(0xFF10B981), width: 3),
//             ),
//           ),
//           const SizedBox(width: 12),

//           // Titre et date
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   date,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     color: Color(0xFF6B7280),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // Badge points
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black26, // même style d’ombre ici aussi
//                   blurRadius: 12,
//                   offset: Offset(0, 6),
//                 ),
//               ],
//             ),
//             child: Text(
//               points,
//               style: const TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkHistoryScreen extends StatelessWidget {
//   const HomeworkHistoryScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16.h),

//             // New Dictation Card - FIXE
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(20.w),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFF5EE4C1), Color(0xFF4DD4AF)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(16.r),
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 40.w,
//                     height: 40.w,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(Icons.add, color: Colors.white, size: 24.sp),
//                   ),
//                   SizedBox(width: 16.w),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'New dictation',
//                           style: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 4.h),
//                         Text(
//                           'Add your words to generate a dictation',
//                           style: TextStyle(
//                             fontSize: 13.sp,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 32.h),

//             // Title - FIXE
//             Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),

//             SizedBox(height: 16.h),

//             // Homework Cards List - SCROLLABLE
//             Expanded(
//               child: ListView.separated(
//                 physics: ClampingScrollPhysics(), // Empêche l'overscroll gris
//                 itemCount: 5,
//                 separatorBuilder: (context, index) => SizedBox(height: 12.h),
//                 itemBuilder: (context, index) {
//                   return HomeworkCard();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 70.h,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.1),
//               blurRadius: 10,
//               offset: Offset(0, -5),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Icon(Icons.home, size: 28.sp, color: Colors.black),
//             Icon(Icons.search, size: 28.sp, color: Colors.black54),
//             Icon(Icons.person_outline, size: 28.sp, color: Colors.black54),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeworkCard extends StatelessWidget {
//   const HomeworkCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: Colors.grey.shade200, width: 1),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.08),
//             blurRadius: 8,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Icon Container
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: BoxDecoration(
//               color: Color(0xFF5EE4C1).withOpacity(0.3),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Center(
//               child: Container(
//                 width: 36.w,
//                 height: 36.w,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade400,
//                   borderRadius: BorderRadius.circular(6.r),
//                 ),
//               ),
//             ),
//           ),

//           SizedBox(width: 16.w),

//           // Text Content
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Dictation about frogs',
//                   style: TextStyle(
//                     fontSize: 15.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   '12 January 2025',
//                   style: TextStyle(
//                     fontSize: 13.sp,
//                     color: Colors.grey.shade600,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(width: 12.w),

//           // Points Badge
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: Color(0xFFFFD93D),
//               borderRadius: BorderRadius.circular(12.r),
//             ),
//             child: Text(
//               '2 points earned!',
//               style: TextStyle(
//                 fontSize: 11.sp,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black87,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'sujet': 'Dictation about frogs',
//       'nom': 'Homework 1',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'sujet': 'Dictation about animals',
//       'nom': 'Homework 2',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'sujet': 'Dictation about nature',
//       'nom': 'Homework 3',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'sujet': 'Dictation about sports',
//       'nom': 'Homework 4',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'sujet': 'Dictation about history',
//       'nom': 'Homework 5',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 8.h),
//             // Card verte "New dictation"
//             _buildNewDictationCard(),
//             SizedBox(height: 32.h),
//             // Titre "Your past homework lessons"
//             Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             // Liste des dictées
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dictations.length,
//                 itemBuilder: (context, index) {
//                   return _buildDictationCard(
//                     dictations[index]['sujet'],
//                     dictations[index]['nom'],
//                     dictations[index]['date'],
//                     dictations[index]['points'],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         // Image en background au lieu du gradient
//         image: const DecorationImage(
//           image: NetworkImage(
//             'https://images.unsplash.com/photo-1557683316-973673baf926?w=800&q=80',
//           ),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF4ADE80).withOpacity(0.3),
//             blurRadius: 20,
//             spreadRadius: 0,
//             offset: Offset(0, 8.h),
//           ),
//         ],
//       ),
//       child: Container(
//         // Overlay semi-transparent pour rendre le texte lisible
//         padding: EdgeInsets.all(4.w),
//         decoration: BoxDecoration(
//           color: Colors.black.withOpacity(0.3),
//           borderRadius: BorderRadius.circular(12.r),
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 48.w,
//               height: 48.w,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//               ),
//               child: Icon(
//                 Icons.add,
//                 color: const Color(0xFF4ADE80),
//                 size: 28.sp,
//               ),
//             ),
//             SizedBox(width: 16.w),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'New dictation',
//                     style: TextStyle(
//                       fontSize: 20.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     'Add your words to generate a dictation',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.white.withOpacity(0.9),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDictationCard(
//     String sujet,
//     String nom,
//     String date,
//     String points,
//   ) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 10,
//             spreadRadius: 0,
//             offset: Offset(0, 2.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Icône livre
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: const Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           // Nom, sujet et date
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 2.h),
//                 Text(
//                   sujet,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: const Color(0xFF6B7280),
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(
//                     fontSize: 13.sp,
//                     color: const Color(0xFF9CA3AF),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Badge points
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 8.h),
//             // Card verte "New dictation"
//             _buildNewDictationCard(),
//             SizedBox(height: 32.h),
//             // Titre "Your past homework lessons"
//             Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             // Liste des dictées
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dictations.length,
//                 itemBuilder: (context, index) {
//                   return _buildDictationCard(
//                     dictations[index]['nom'],
//                     dictations[index]['date'],
//                     dictations[index]['points'],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFF4ADE80),
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF4ADE80).withOpacity(0.3),
//             blurRadius: 20,
//             spreadRadius: 0,
//             offset: Offset(0, 8.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(Icons.add, color: const Color(0xFF4ADE80), size: 28.sp),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'New dictation',
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   'Add your words to generate a dictation',
//                   style: TextStyle(fontSize: 14.sp, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 10,
//             spreadRadius: 0,
//             offset: Offset(0, 2.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Icône livre
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: const Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           // Nom et date
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(
//                     fontSize: 13.sp,
//                     color: const Color(0xFF9CA3AF),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Badge points
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 8.h),

//             _buildNewDictationCard(),

//             SizedBox(height: 32.h),

//             Text(
//               'Your past homework lessons',
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),

//             SizedBox(height: 16.h),

//             // Expanded(
//             //   child: ScrollConfiguration(
//             //     behavior: NoGlowScrollBehavior(),
//             //     child: ListView.builder(
//             //       itemCount: dictations.length,
//             //       itemBuilder: (context, index) {
//             //         return _buildDictationCard(
//             //           dictations[index]['nom'],
//             //           dictations[index]['date'],
//             //           dictations[index]['points'],
//             //         );
//             //       },
//             //     ),
//             //   ),
//             // ),
//             Expanded(
//               child: ListView.builder(
//                 physics: const ClampingScrollPhysics(),
//                 itemCount: dictations.length,
//                 itemBuilder: (context, index) {
//                   return _buildDictationCard(
//                     dictations[index]['nom'],
//                     dictations[index]['date'],
//                     dictations[index]['points'],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFF4ADE80),
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF4ADE80).withOpacity(0.3),
//             blurRadius: 20,
//             offset: Offset(0, 8.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(Icons.add, color: Color(0xFF4ADE80), size: 28.sp),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'New dictation',
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   'Add your words to generate a dictation',
//                   style: TextStyle(fontSize: 14.sp, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: Color(0xFFE5E7EB)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 10,
//             offset: Offset(0, 2.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(fontSize: 13.sp, color: Color(0xFF9CA3AF)),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoGlowScrollBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return child;
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/services.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // --- Supprimer couleur grise du status bar ---
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         statusBarIconBrightness: Brightness.dark,
//         systemNavigationBarColor: Colors.white,
//       ),
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         automaticallyImplyLeading: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),

//       body: ScrollConfiguration(
//         behavior: NoGlowScrollBehavior(),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 8.h),

//               _buildNewDictationCard(),

//               SizedBox(height: 32.h),

//               Text(
//                 'Your past homework lessons',
//                 style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),

//               SizedBox(height: 16.h),

//               Expanded(
//                 child: ListView.builder(
//                   itemCount: dictations.length,
//                   physics: const ClampingScrollPhysics(), // empêche stretch
//                   itemBuilder: (context, index) {
//                     return _buildDictationCard(
//                       dictations[index]['nom'],
//                       dictations[index]['date'],
//                       dictations[index]['points'],
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFF4ADE80),
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF4ADE80).withOpacity(0.3),
//             blurRadius: 20,
//             offset: Offset(0, 8.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(Icons.add, color: Color(0xFF4ADE80), size: 28.sp),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'New dictation',
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   'Add your words to generate a dictation',
//                   style: TextStyle(fontSize: 14.sp, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: const Color(0xFFE5E7EB)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 10,
//             offset: Offset(0, 2.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: const Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(
//                     fontSize: 13.sp,
//                     color: const Color(0xFF9CA3AF),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoGlowScrollBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return child; // Supprime l’effet gris
//   }

//   @override
//   ScrollPhysics getScrollPhysics(BuildContext context) {
//     return const ClampingScrollPhysics(); // empêche stretch overscroll
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/services.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // --- Status Bar Blanc ---
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: Colors.white, // Couleur blanche
//         statusBarIconBrightness: Brightness.dark, // Icônes noires
//         statusBarBrightness: Brightness.light, // Pour iOS
//         systemNavigationBarColor: Colors.white,
//       ),
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         automaticallyImplyLeading: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),

//       body: ScrollConfiguration(
//         behavior: NoGlowScrollBehavior(), // No overscroll
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 8.h),

//               _buildNewDictationCard(),

//               SizedBox(height: 32.h),

//               Text(
//                 'Your past homework lessons',
//                 style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),

//               SizedBox(height: 16.h),

//               Expanded(
//                 child: ListView.builder(
//                   itemCount: dictations.length,
//                   physics: const ClampingScrollPhysics(), // Empêche stretch
//                   itemBuilder: (context, index) {
//                     return _buildDictationCard(
//                       dictations[index]['nom'],
//                       dictations[index]['date'],
//                       dictations[index]['points'],
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFF4ADE80),
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF4ADE80).withOpacity(0.3),
//             blurRadius: 20,
//             offset: Offset(0, 8.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(Icons.add, color: Color(0xFF4ADE80), size: 28.sp),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'New dictation',
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   'Add your words to generate a dictation',
//                   style: TextStyle(fontSize: 14.sp, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: const Color(0xFFE5E7EB)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 10,
//             offset: Offset(0, 2.h),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: const Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(
//                     fontSize: 13.sp,
//                     color: const Color(0xFF9CA3AF),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoGlowScrollBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return child; // Supprime effet gris
//   }

//   @override
//   ScrollPhysics getScrollPhysics(BuildContext context) {
//     return const ClampingScrollPhysics(); // Empêche stretch
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: const SystemUiOverlayStyle(
//         statusBarColor: Colors.white, // Blanc total
//         statusBarIconBrightness: Brightness.dark,
//         statusBarBrightness: Brightness.light,
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         extendBodyBehindAppBar: false,

//         body: Column(
//           children: [
//             // ----------- Custom Header (remplace AppBar) -----------
//             SafeArea(
//               bottom: false,
//               child: Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () => Navigator.pop(context),
//                       child: Icon(
//                         Icons.arrow_back_ios,
//                         size: 22.sp,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             Expanded(
//               child: ScrollConfiguration(
//                 behavior: NoGlowScrollBehavior(),
//                 child: ListView(
//                   padding: EdgeInsets.symmetric(horizontal: 16.w),
//                   children: [
//                     SizedBox(height: 8.h),

//                     _buildNewDictationCard(),

//                     SizedBox(height: 32.h),

//                     Text(
//                       'Your past homework lessons',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),

//                     SizedBox(height: 16.h),

//                     ...dictations.map(
//                       (d) =>
//                           _buildDictationCard(d['nom'], d['date'], d['points']),
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

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFF4ADE80),
//         borderRadius: BorderRadius.circular(16.r),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(Icons.add, size: 28.sp, color: Color(0xFF4ADE80)),
//           ),
//           SizedBox(width: 16.w),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'New dictation',
//                 style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 4.h),
//               Text(
//                 'Add your words to generate a dictation',
//                 style: TextStyle(fontSize: 14.sp),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: const Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(fontSize: 13.sp, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoGlowScrollBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return child; // No glow, no grey
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: const SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarIconBrightness: Brightness.dark,
//         statusBarBrightness: Brightness.light,
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         extendBodyBehindAppBar: false,
//         body: Column(
//           children: [
//             // ----------- Custom Header -----------
//             SafeArea(
//               bottom: false,
//               child: Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () => Navigator.pop(context),
//                       child: Icon(
//                         Icons.arrow_back_ios,
//                         size: 22.sp,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // ----------- New Dictation Card (Fixed) -----------
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.w),
//               child: Column(
//                 children: [
//                   SizedBox(height: 8.h),
//                   _buildNewDictationCard(),
//                   SizedBox(height: 32.h),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Your past homework lessons',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16.h),
//                 ],
//               ),
//             ),

//             // ----------- Liste scrollable des cards -----------
//             Expanded(
//               child: ScrollConfiguration(
//                 behavior: NoGlowScrollBehavior(),
//                 child: ListView.builder(
//                   padding: EdgeInsets.symmetric(horizontal: 16.w),
//                   itemCount: dictations.length,
//                   itemBuilder: (context, index) {
//                     final d = dictations[index];
//                     return _buildDictationCard(
//                       d['nom'],
//                       d['date'],
//                       d['points'],
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFF4ADE80),
//         borderRadius: BorderRadius.circular(16.r),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(Icons.add, size: 28.sp, color: Color(0xFF4ADE80)),
//           ),
//           SizedBox(width: 16.w),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'New dictation',
//                 style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 4.h),
//               Text(
//                 'Add your words to generate a dictation',
//                 style: TextStyle(fontSize: 14.sp),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               Icons.menu_book_rounded,
//               color: const Color(0xFF10B981),
//               size: 32.sp,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(fontSize: 13.sp, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoGlowScrollBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return child;
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({super.key});

//   final List<Map<String, dynamic>> dictations = const [
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//     {
//       'nom': 'Dictation about frogs',
//       'date': '12 January 2025',
//       'points': '2 points earned!',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: const SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarIconBrightness: Brightness.dark,
//         statusBarBrightness: Brightness.light,
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         extendBodyBehindAppBar: false,
//         body: Column(
//           children: [
//             // ----------- Custom Header -----------
//             SafeArea(
//               bottom: false,
//               child: Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () => Navigator.pop(context),
//                       child: Icon(
//                         Icons.arrow_back_ios,
//                         size: 22.sp,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // ----------- New Dictation Card (Fixed) -----------
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.w),
//               child: Column(
//                 children: [
//                   SizedBox(height: 8.h),
//                   _buildNewDictationCard(),
//                   SizedBox(height: 32.h),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Your past homework lessons',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16.h),
//                 ],
//               ),
//             ),

//             // ----------- Liste scrollable des cards -----------
//             Expanded(
//               child: ScrollConfiguration(
//                 behavior:
//                     NoGlowScrollBehavior(), // Supprime le glow sur Android
//                 child: ListView.builder(
//                   physics:
//                       const ClampingScrollPhysics(), // Supprime le bounce sur iOS
//                   padding: EdgeInsets.symmetric(horizontal: 16.w),
//                   itemCount: dictations.length,
//                   itemBuilder: (context, index) {
//                     final d = dictations[index];
//                     return _buildDictationCard(
//                       d['nom'],
//                       d['date'],
//                       d['points'],
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNewDictationCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         image: const DecorationImage(
//           image: AssetImage('assets/images/background/CardNewGreen.png'),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 0,
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48.w,
//             height: 48.w,
//             // decoration: const BoxDecoration(
//             //   color: Colors.white,
//             //   shape: BoxShape.circle,
//             // ),
//             child: Center(
//               child: SvgPicture.asset(
//                 'assets/Pluscircle.svg', // Remplacez par le chemin de votre SVG
//                 width: 32.sp,
//                 height: 32.sp,
//                 // colorFilter: const ColorFilter.mode(
//                 //   Color(0xFF4ADE80),
//                 //   BlendMode.srcIn,
//                 // ),
//               ),
//             ),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'New dictation',
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                     height: 1.1,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   'Add your words to generate a dictation',
//                   style: TextStyle(fontSize: 14.sp, height: 1.1),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDictationCard(String nom, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 56.w,
//             height: 56.w,
//             decoration: BoxDecoration(
//               color: const Color(0xFF10B981).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//               border: Border.all(color: const Color(0xFF10B981), width: 2),
//               image: const DecorationImage(
//                 image: AssetImage(
//                   'assets/images/logos/Listlogo.jpg',
//                 ), // Remplacez par le chemin de votre image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   nom,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   date,
//                   style: TextStyle(fontSize: 13.sp, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(20.r),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoGlowScrollBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return child;
//   }
// }
