// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'design.dart';

// class DictationFeedbackScreen extends StatelessWidget {
//   const DictationFeedbackScreen({Key? key}) : super(key: key);

//   // ==================== VARIABLES DE CONTENU ====================

//   // ✅ Texte principal de la dictée (avec erreurs à surligner)
//   final List<Map<String, dynamic>> dictationParagraphs = const [
//     {
//       "text":
//           "Every day after school, the children walked home together. Their job was to help set the table and feed the dog. For a snack, they had whole grain bread with fruit. It was healthy and tasty! On weekends, they played games in the garden and watched football on TV with their family. One day, a strange ",
//     },
//     {"text": "turk", "isError": true},
//     {
//       "text":
//           " stopped outside. It was a new kind of transport for delivering books to the library. The children were excited and curious. They told their parents all about it at dinner, and everyone ",
//     },
//     {"text": "smaild", "isError": true},
//     {"text": ". It was a fun and special day!"},
//   ];

//   // ✅ Feedback général à afficher dans le conteneur vert
//   final String feedbackText = """
// Bravo pour ton travail ! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Continue ainsi et n’oublie pas de relire attentivement tes dictées pour corriger les petites fautes restantes.
// """;

//   // ✅ Description courte sous le titre principal
//   final String shortDescription =
//       "This can be a quick description of the lesson";

//   // ==================== ACTIONS ====================

//   void _onClose(BuildContext context) => {};

//   void _onFinish() {
//     debugPrint("Finish clicked !");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DictationFeedbackDesign(
//       dictationParagraphs: dictationParagraphs,
//       feedbackText: feedbackText,
//       shortDescription: shortDescription,
//       onClose: () => _onClose(context),
//       onTryAnother: _onFinish,
//     );
//   }
// }

// // ==================== DICTATION FEEDBACK - design.dart ====================

// class DictationFeedbackDesign extends StatelessWidget {
//   final List<Map<String, dynamic>> dictationParagraphs;
//   final String feedbackText;
//   final String shortDescription;

//   final VoidCallback onClose;
//   final VoidCallback onTryAnother;

//   const DictationFeedbackDesign({
//     Key? key,
//     required this.dictationParagraphs,
//     required this.feedbackText,
//     required this.shortDescription,

//     required this.onClose,
//     required this.onTryAnother,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       // ==================== CORPS ====================
//       body: Column(
//         children: [
//           // ================= HEADER =================
//           Container(
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               color: Color(0xFF5FD98B),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(45),
//                 bottomRight: Radius.circular(45),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 12,
//                   offset: Offset(0, 6),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               bottom: false,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: GestureDetector(
//                         onTap: onClose,
//                         child: const Icon(
//                           Icons.close,
//                           color: Colors.black,
//                           size: 24,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       'Your dictation feedback',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       shortDescription,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.black87,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFFFF9800),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Text(
//                         "2 points earned!",
//                         style: const TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // ================= CONTENU =================
//           Expanded(
//             child: Column(
//               children: [
//                 const SizedBox(height: 16),

//                 // ✅ Partie scrollable : dictée + erreurs surlignées
//                 Expanded(
//                   child: SingleChildScrollView(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: RichText(
//                       text: TextSpan(
//                         style: const TextStyle(
//                           fontSize: 16,
//                           height: 1.6,
//                           color: Colors.black87,
//                         ),
//                         children: dictationParagraphs.map((part) {
//                           if (part["isError"] == true) {
//                             return TextSpan(
//                               text: part["text"],
//                               style: const TextStyle(
//                                 color: Colors.red,
//                                 decoration: TextDecoration.underline,
//                                 decorationColor: Colors.red,
//                                 decorationThickness: 2,
//                               ),
//                             );
//                           } else {
//                             return TextSpan(text: part["text"]);
//                           }
//                         }).toList(),
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 16),

//                 // ✅ Feedback global (conteneur vert)
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
//                   child: Container(
//                     width: double.infinity,
//                     constraints: const BoxConstraints(maxHeight: 200),
//                     padding: const EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF5FD98B),
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Overall feedback',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           Text(
//                             feedbackText,
//                             style: const TextStyle(
//                               fontSize: 14,
//                               height: 1.5,
//                               color: Colors.black87,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),

//       // ================= BOUTON EN BAS =================
//       bottomNavigationBar: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: const Offset(0, -5),
//             ),
//           ],
//         ),
//         child: ElevatedButton(
//           onPressed: onTryAnother,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color(0xFF2B2B2B),
//             foregroundColor: Colors.white,
//             padding: const EdgeInsets.symmetric(vertical: 16),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             elevation: 0,
//           ),
//           child: const Text(
//             'Finish',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------------------------------------------------------------------------------------------

// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';

// class HomeworkFeedbackPage extends StatefulWidget {
//   const HomeworkFeedbackPage({super.key});

//   @override
//   State<HomeworkFeedbackPage> createState() => _HomeworkFeedbackPageState();
// }

// class _HomeworkFeedbackPageState extends State<HomeworkFeedbackPage> {
//   bool isLoading = false;

//   final String feedbackText =
//       """Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.""";

//   Future<void> _onTryAnother() async {

//   }

//   void _onClose() {

//   }

//   @override
//   Widget build(BuildContext context) {
//     return HomeworkFeedbackDesign(
//       feedbackText: feedbackText,
//       pointsEarned: 2,
//       isLoading: isLoading,
//       onTryAnother: _onTryAnother,
//       onClose: _onClose,
//     );
//   }
// }

// class HomeworkFeedbackDesign extends StatelessWidget {
//   final String feedbackText;
//   final int pointsEarned;
//   final bool isLoading;
//   final VoidCallback onTryAnother;
//   final VoidCallback onClose;

//   const HomeworkFeedbackDesign({
//     super.key,
//     required this.feedbackText,
//     required this.pointsEarned,
//     required this.isLoading,
//     required this.onTryAnother,
//     required this.onClose,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ================= HEADER AVEC IMAGE =================
//           Container(
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/Card.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(24),
//                 bottomRight: Radius.circular(24),
//               ),
//             ),
//             child: SafeArea(
//               bottom: false,
//               child: Stack(
//                 children: [
//                   // Bouton fermer
//                   Positioned(
//                     top: 16,
//                     right: 16,
//                     child: GestureDetector(
//                       onTap: onClose,
//                       child: Container(
//                         width: 32,
//                         height: 32,
//                         decoration: BoxDecoration(
//                           color: Colors.black.withOpacity(0.3),
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.close,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ),

//                   // Contenu du header
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(24, 60, 24, 32),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Your homework feedback',
//                           style: GoogleFonts.poppins(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.white,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.4),
//                                 offset: const Offset(1, 1),
//                                 blurRadius: 3,
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           'This can be a quick description',
//                           style: GoogleFonts.inter(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 12,
//                             vertical: 6,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFFF6B6B),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Text(
//                             '$pointsEarned points earned!',
//                             style: GoogleFonts.inter(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // ================= CONTENU FEEDBACK =================
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(24),
//               child: Text(
//                 feedbackText,
//                 style: GoogleFonts.inter(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400,
//                   color: const Color(0xFF1C1C1C),
//                   height: 1.5,
//                 ),
//               ),
//             ),
//           ),

//           // ================= BOUTON =================
//           Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Container(
//               width: double.infinity,
//               height: 56,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1C1C1C),
//                 borderRadius: BorderRadius.circular(28),
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   onTap: isLoading ? null : onTryAnother,
//                   borderRadius: BorderRadius.circular(28),
//                   child: Center(
//                     child: isLoading
//                         ? const SizedBox(
//                             width: 20,
//                             height: 20,
//                             child: CircularProgressIndicator(
//                               strokeWidth: 2,
//                               valueColor: AlwaysStoppedAnimation<Color>(
//                                 Colors.white,
//                               ),
//                             ),
//                           )
//                         : Text(
//                             'Try another!',
//                             style: GoogleFonts.inter(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkFeedbackPage extends StatefulWidget {
//   const HomeworkFeedbackPage({super.key});

//   @override
//   State<HomeworkFeedbackPage> createState() => _HomeworkFeedbackPageState();
// }

// class _HomeworkFeedbackPageState extends State<HomeworkFeedbackPage> {
//   bool isLoading = false;

//   final String feedbackText =
//       """Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.
//     Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.""";

//   Future<void> _onFinish() async {}

//   void _onClose() {}

//   @override
//   Widget build(BuildContext context) {
//     return HomeworkFeedbackDesign(
//       feedbackText: feedbackText,
//       onFinish: _onFinish,
//       onClose: _onClose,
//     );
//   }
// }

// class HomeworkFeedbackDesign extends StatelessWidget {
//   final String feedbackText;
//   final VoidCallback onFinish;
//   final VoidCallback onClose;

//   const HomeworkFeedbackDesign({
//     super.key,
//     required this.feedbackText,
//     required this.onFinish,
//     required this.onClose,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ================= HEADER AVEC IMAGE =================
//           Container(
//             width: double.infinity,
//             height: 183.h,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                   'assets/images/cardbackground/CardYellow.png',
//                 ),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(24.r),
//                 bottomRight: Radius.circular(24.r),
//               ),
//             ),
//             child: SafeArea(
//               bottom: false,
//               child: Stack(
//                 children: [
//                   // Bouton fermer
//                   Positioned(
//                     top: 16.h,
//                     right: 16.w,
//                     child: GestureDetector(
//                       onTap: onClose,
//                       child: Container(
//                         width: 32.w,
//                         height: 32.h,
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.black,
//                           size: 20.sp,
//                         ),
//                       ),
//                     ),
//                   ),

//                   // Contenu du header
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(32.w, 24.h, 32.w, 32.h),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Your homework feedback',
//                           style: GoogleFonts.poppins(
//                             fontSize: 20.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           'This can be a quick description',
//                           style: GoogleFonts.inter(
//                             fontSize: 14.sp,
//                             // fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         SizedBox(height: 12.h),
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 16.w,
//                             vertical: 8.h,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFFF6B6B),
//                             borderRadius: BorderRadius.circular(20.r),
//                           ),
//                           child: Text(
//                             '2 points earned!',
//                             style: GoogleFonts.inter(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // ================= CONTENU FEEDBACK =================
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.fromLTRB(32.w, 32.h, 32.w, 24.h),
//               child: Text(
//                 feedbackText,
//                 style: GoogleFonts.inter(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black,
//                   height: 1.5,
//                 ),
//               ),
//             ),
//           ),

//           // ================= BOUTON =================
//           Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//             child: Container(
//               width: double.infinity,
//               height: 56.h,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   onTap: onFinish,
//                   borderRadius: BorderRadius.circular(30.r),
//                   child: Center(
//                     child: Text(
//                       'Finish',
//                       style: GoogleFonts.inter(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HomeworkFeedbackPage extends StatefulWidget {
//   const HomeworkFeedbackPage({super.key});

//   @override
//   State<HomeworkFeedbackPage> createState() => _HomeworkFeedbackPageState();
// }

// class _HomeworkFeedbackPageState extends State<HomeworkFeedbackPage> {
//   bool isLoading = false;

//   final String feedbackText =
//       """Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.""";

//   Future<void> _onFinish() async {}

//   void _onClose() {}

//   @override
//   Widget build(BuildContext context) {
//     return HomeworkFeedbackDesign(
//       feedbackText: feedbackText,
//       onFinish: _onFinish,
//       onClose: _onClose,
//     );
//   }
// }

// class HomeworkFeedbackDesign extends StatelessWidget {
//   final String feedbackText;
//   final VoidCallback onFinish;
//   final VoidCallback onClose;

//   const HomeworkFeedbackDesign({
//     super.key,
//     required this.feedbackText,
//     required this.onFinish,
//     required this.onClose,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ================= HEADER AVEC IMAGE SVG =================
//           Stack(
//             children: [
//               // SVG comme background avec hauteur définie
//               SvgPicture.asset(
//                 'assets/images/cardbackground/CardYellow.svg',
//                 width: double.infinity,
//                 height: 183.h, // Ajoutez une hauteur
//                 fit: BoxFit.cover,
//               ),

//               // Contenu par-dessus le SVG
//               SafeArea(
//                 bottom: false,
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: Stack(
//                     children: [
//                       // Bouton fermer
//                       Positioned(
//                         top: 16.h,
//                         right: 16.w,
//                         child: GestureDetector(
//                           onTap: onClose,
//                           child: Container(
//                             width: 32.w,
//                             height: 32.h,
//                             child: Icon(
//                               Icons.close,
//                               color: Colors.black,
//                               size: 20.sp,
//                             ),
//                           ),
//                         ),
//                       ),

//                       // Contenu du header
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(24.w, 60.h, 24.w, 32.h),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Your homework feedback',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 24.sp,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white,
//                                 shadows: [
//                                   Shadow(
//                                     color: Colors.black.withOpacity(0.4),
//                                     offset: Offset(1.w, 1.h),
//                                     blurRadius: 3.r,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 8.h),
//                             Text(
//                               'This can be a quick description',
//                               style: GoogleFonts.inter(
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(height: 16.h),
//                             Container(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 12.w,
//                                 vertical: 6.h,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFFFF6B6B),
//                                 borderRadius: BorderRadius.circular(20.r),
//                               ),
//                               child: Text(
//                                 '2 points earned!',
//                                 style: GoogleFonts.inter(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           // ================= CONTENU FEEDBACK =================
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.all(24.w),
//               child: Text(
//                 feedbackText,
//                 style: GoogleFonts.inter(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w400,
//                   color: const Color(0xFF1C1C1C),
//                   height: 1.5,
//                 ),
//               ),
//             ),
//           ),

//           // ================= BOUTON =================
//           Padding(
//             padding: EdgeInsets.all(24.w),
//             child: Container(
//               width: double.infinity,
//               height: 56.h,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   onTap: onFinish,
//                   borderRadius: BorderRadius.circular(30.r),
//                   child: Center(
//                     child: Text(
//                       'Finish',
//                       style: GoogleFonts.inter(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ---------------------------------------------------

// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkFeedbackPage extends StatefulWidget {
//   const HomeworkFeedbackPage({super.key});

//   @override
//   State<HomeworkFeedbackPage> createState() => _HomeworkFeedbackPageState();
// }

// class _HomeworkFeedbackPageState extends State<HomeworkFeedbackPage> {
//   bool isLoading = false;

//   final String feedbackText =
//       """Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.
//     Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.

// Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.""";

//   Future<void> _onFinish() async {}

//   void _onClose() {}

//   @override
//   Widget build(BuildContext context) {
//     return HomeworkFeedbackDesign(
//       feedbackText: feedbackText,
//       onFinish: _onFinish,
//       onClose: _onClose,
//     );
//   }
// }

// class HomeworkFeedbackDesign extends StatelessWidget {
//   final String feedbackText;
//   final VoidCallback onFinish;
//   final VoidCallback onClose;

//   const HomeworkFeedbackDesign({
//     super.key,
//     required this.feedbackText,
//     required this.onFinish,
//     required this.onClose,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ================= HEADER AVEC IMAGE =================
//           Container(
//             width: double.infinity,
//             height: 200.h,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                   'assets/images/cardbackground/CardYellow.png',
//                 ),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(24.r),
//                 bottomRight: Radius.circular(24.r),
//               ),
//             ),
//             child: SafeArea(
//               bottom: false,
//               child: Stack(
//                 children: [
//                   // Bouton fermer
//                   Positioned(
//                     top: 20.h,
//                     right: 20.w,
//                     child: GestureDetector(
//                       onTap: onClose,
//                       child: Container(
//                         width: 32.w,
//                         height: 32.h,
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.black,
//                           size: 24.sp,
//                         ),
//                       ),
//                     ),
//                   ),

//                   // Contenu du header
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(32.w, 32.h, 32.w, 24.h),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Your homework feedback',
//                           style: GoogleFonts.poppins(
//                             fontSize: 24.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             height: 1.2,
//                           ),
//                         ),
//                         SizedBox(height: 12.h),
//                         Text(
//                           'This can be a quick description',
//                           style: GoogleFonts.inter(
//                             fontSize: 14.sp,
//                             color: Colors.black,
//                             height: 1.4,
//                           ),
//                         ),
//                         SizedBox(height: 16.h),
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 20.w,
//                             vertical: 10.h,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFFF6B6B),
//                             borderRadius: BorderRadius.circular(24.r),
//                           ),
//                           child: Text(
//                             '2 points earned!',
//                             style: GoogleFonts.inter(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // ================= CONTENU FEEDBACK =================
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.fromLTRB(32.w, 24.h, 32.w, 24.h),
//               child: Text(
//                 feedbackText,
//                 style: GoogleFonts.inter(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black,
//                   height: 1.6,
//                 ),
//               ),
//             ),
//           ),

//           // ================= BOUTON =================
//           Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 16.h, 32.w, 40.h),
//             child: Container(
//               width: double.infinity,
//               height: 56.h,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   onTap: onFinish,
//                   borderRadius: BorderRadius.circular(30.r),
//                   child: Center(
//                     child: Text(
//                       'Finish',
//                       style: GoogleFonts.inter(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
