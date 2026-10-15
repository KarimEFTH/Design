// =============================================== Gender ======================================================

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class GenderSelectionDesign extends StatelessWidget {
//   final String? selectedGender;
//   final bool isLoading;
//   final Function(String) onGenderSelected;
//   final VoidCallback onContinue;

//   const GenderSelectionDesign({
//     super.key,
//     required this.selectedGender,
//     required this.isLoading,
//     required this.onGenderSelected,
//     required this.onContinue,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(color: Color(0xFFFDCB02)),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               top: 54.0,
//               right: 32.0,
//               bottom: 54.0,
//               left: 32.0,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(),

//                 // Titre
//                 Text(
//                   'Quel est le genre de votre\nenfant?',
//                   style: GoogleFonts.poppins(
//                     fontSize: 24,
//                     fontWeight: FontWeight.w700,
//                     color: const Color(0xFF1C1C1C),
//                     height: 1.5,
//                   ),
//                 ),

//                 const SizedBox(height: 40),

//                 // Option: Un garçon
//                 _GenderOption(
//                   label: 'Un garçon',
//                   isSelected: selectedGender == 'boy',
//                   onTap: () => onGenderSelected('boy'),
//                 ),

//                 const SizedBox(height: 16),

//                 // Option: Une fille
//                 _GenderOption(
//                   label: 'Une fille',
//                   isSelected: selectedGender == 'girl',
//                   onTap: () => onGenderSelected('girl'),
//                 ),

//                 const SizedBox(height: 16),

//                 // Option: Je ne le communique pas
//                 _GenderOption(
//                   label: 'Je ne le communique pas',
//                   isSelected: selectedGender == 'not_specified',
//                   onTap: () => onGenderSelected('not_specified'),
//                 ),

//                 const SizedBox(height: 140),

//                 // Bouton Continuer
//                 Container(
//                   width: double.infinity,
//                   height: 48,
//                   decoration: BoxDecoration(
//                     color: selectedGender != null
//                         ? const Color(0xFF1C1C1C)
//                         : const Color(0xFF1C1C1C),
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                   child: Material(
//                     color: Colors.transparent,
//                     child: InkWell(
//                       onTap: selectedGender != null && !isLoading
//                           ? onContinue
//                           : null,
//                       borderRadius: BorderRadius.circular(24),
//                       child: Center(
//                         child: isLoading
//                             ? const SizedBox(
//                                 width: 20,
//                                 height: 20,
//                                 child: CircularProgressIndicator(
//                                   strokeWidth: 2,
//                                   valueColor: AlwaysStoppedAnimation<Color>(
//                                     Colors.white,
//                                   ),
//                                 ),
//                               )
//                             : Text(
//                                 'Continuer',
//                                 style: GoogleFonts.inter(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _GenderOption extends StatelessWidget {
//   final String label;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const _GenderOption({
//     required this.label,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(28),
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         decoration: BoxDecoration(
//           color: isSelected ? const Color(0xFFFDCB02) : Colors.transparent,
//           border: Border.all(
//             color: const Color(0xFF1C1C1C),
//             width: isSelected ? 2 : 1,
//           ),
//           borderRadius: BorderRadius.circular(28),
//         ),
//         child: Center(
//           child: Text(
//             label,
//             style: GoogleFonts.inter(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//               color: const Color(0xFF1C1C1C),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// )============================ Onboardoing  =================================

// import 'package:flutter/material.dart';

// class SatisfactionPage extends StatelessWidget {
//   const SatisfactionPage({Key? key}) : super(key: key);

//   final List<Map<String, dynamic>> testimonials = const [
//     {
//       'avatar': 'https://i.pravatar.cc/150?img=47',
//       'text':
//           'This app is so cool! It really made my kids start engaging more!',
//     },
//     {
//       'avatar': 'https://i.pravatar.cc/150?img=32',
//       'text':
//           'Amazing progress in just 2 weeks! My daughter loves learning now.',
//     },
//     {
//       'avatar': 'https://i.pravatar.cc/150?img=65',
//       'text': 'Best educational app ever! Highly recommend to all parents.',
//     },
//   ];

//   Widget _buildTestimonialCard(int index) {
//     return Container(
//       width: 280,
//       margin: EdgeInsets.only(right: index == 2 ? 0 : 16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.3),
//             blurRadius: 30,
//             spreadRadius: 5,
//             offset: Offset(0, 63.5),
//           ),
//         ],
//       ),
//       child: Card(
//         elevation: 0,
//         shadowColor: Colors.transparent,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundImage: NetworkImage(testimonials[index]['avatar']),
//               ),
//               SizedBox(height: 12),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                   5,
//                   (starIndex) =>
//                       Icon(Icons.star, color: Color(0xFFFBBF24), size: 22),
//                 ),
//               ),
//               SizedBox(height: 12),
//               Text(
//                 testimonials[index]['text'],
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Color(0xFF6B7280),
//                   height: 1.4,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFF4ADE80), Color(0xFF34D399)],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                       child: Text(
//                         '93%',
//                         style: TextStyle(
//                           fontSize: 80,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF1F2937),
//                           height: 1.0,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                       child: Text(
//                         'des parents sont\nsatisfaits des progrès\nde leurs enfants\naprès seulement 2\nsemaines',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF1F2937),
//                           height: 1.3,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 40),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 220,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   padding: EdgeInsets.symmetric(horizontal: 24),
//                   itemCount: 3,
//                   itemBuilder: (context, index) {
//                     return _buildTestimonialCard(index);
//                   },
//                 ),
//               ),
//               SizedBox(height: 40),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24.0,
//                   vertical: 24.0,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Action du bouton
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF1F2937),
//                       padding: EdgeInsets.symmetric(vertical: 18),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Continuer',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
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

// =========================  prog =======================================================

// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class PreparationLoadingPage extends StatelessWidget {
//   const PreparationLoadingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFF93C5FD), Color(0xFF60A5FA)],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               SizedBox(height: 50),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'On prépare l\'espace\nsur mesure de\nGuillaume!',
//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF1F2937),
//                       height: 1.2,
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Center(
//                   child: CustomPaint(
//                     size: Size(240, 240),
//                     painter: LoadingCirclePainter(),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Action du bouton
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF1F2937),
//                       padding: EdgeInsets.symmetric(vertical: 18),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Continuer',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
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

// class LoadingCirclePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = size.width / 2;

//     // Cercle de fond (blanc/gris clair)
//     final bgPaint = Paint()
//       ..color = Colors.white.withOpacity(0.4)
//       ..style = PaintingStyle.fill;
//     canvas.drawCircle(center, radius, bgPaint);

//     // Cercle intérieur blanc
//     final innerCirclePaint = Paint()
//       ..color = Colors.white.withOpacity(0.6)
//       ..style = PaintingStyle.fill;
//     canvas.drawCircle(center, radius * 0.75, innerCirclePaint);

//     // Arc de progression bleu (70%)
//     final progressPaint = Paint()
//       ..color = Color(0xFF2563EB)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 28
//       ..strokeCap = StrokeCap.round;

//     final progressRect = Rect.fromCircle(center: center, radius: radius - 14);
//     canvas.drawArc(
//       progressRect,
//       -math.pi / 2, // Commence en haut
//       2 * math.pi * 0.7, // 70% du cercle
//       false,
//       progressPaint,
//     );

//     // Point bleu au début de l'arc
//     final startPointPaint = Paint()
//       ..color = Color(0xFF2563EB)
//       ..style = PaintingStyle.fill;
//     final startPoint = Offset(center.dx, center.dy - (radius - 14));
//     canvas.drawCircle(startPoint, 14, startPointPaint);

//     // Étoile jaune à la fin de l'arc (à 70%)
//     final starAngle = -math.pi / 2 + (2 * math.pi * 0.7);
//     final starX = center.dx + (radius - 14) * math.cos(starAngle);
//     final starY = center.dy + (radius - 14) * math.sin(starAngle);

//     _drawStar(canvas, Offset(starX, starY), 25, Color(0xFFFBBF24));

//     // Texte 70% au centre
//     final textPainter = TextPainter(
//       text: TextSpan(
//         text: '70%',
//         style: TextStyle(
//           fontSize: 56,
//           fontWeight: FontWeight.bold,
//           color: Color(0xFF1F2937),
//         ),
//       ),
//       textDirection: TextDirection.ltr,
//     );
//     textPainter.layout();
//     textPainter.paint(
//       canvas,
//       Offset(
//         center.dx - textPainter.width / 2,
//         center.dy - textPainter.height / 2,
//       ),
//     );
//   }

//   void _drawStar(Canvas canvas, Offset center, double size, Color color) {
//     final paint = Paint()
//       ..color = color
//       ..style = PaintingStyle.fill;

//     final path = Path();
//     final outerRadius = size;
//     final innerRadius = size * 0.4;
//     final points = 5;

//     for (int i = 0; i < points * 2; i++) {
//       final radius = i.isEven ? outerRadius : innerRadius;
//       final angle = (i * math.pi / points) - math.pi / 2;
//       final x = center.dx + radius * math.cos(angle);
//       final y = center.dy + radius * math.sin(angle);

//       if (i == 0) {
//         path.moveTo(x, y);
//       } else {
//         path.lineTo(x, y);
//       }
//     }
//     path.close();
//     canvas.drawPath(path, paint);

//     // Yeux de l'étoile
//     final eyePaint = Paint()
//       ..color = Color(0xFF1F2937)
//       ..style = PaintingStyle.fill;

//     canvas.drawCircle(Offset(center.dx - 6, center.dy - 3), 2, eyePaint);
//     canvas.drawCircle(Offset(center.dx + 6, center.dy - 3), 2, eyePaint);

//     // Sourire de l'étoile
//     final smilePaint = Paint()
//       ..color = Color(0xFF1F2937)
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     final smilePath = Path();
//     smilePath.moveTo(center.dx - 8, center.dy + 3);
//     smilePath.quadraticBezierTo(
//       center.dx,
//       center.dy + 8,
//       center.dx + 8,
//       center.dy + 3,
//     );
//     canvas.drawPath(smilePath, smilePaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// ================================  Onboarding 2 =================================================

// import 'package:flutter/material.dart';

// class SuccessKeysPage extends StatelessWidget {
//   const SuccessKeysPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFFFCE7F3), Color(0xFFFBCFE8)],
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 40),
//                 Text(
//                   'Souhaitez vous\ndonner les keys de la\nréussite à votre\nenfant?',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF1F2937),
//                     height: 1.3,
//                   ),
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color(0xFFEC4899),
//                       ),
//                       child: Center(
//                         child: CustomPaint(
//                           size: Size(100, 50),
//                           painter: SmileFacePainter(),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: OutlinedButton(
//                         onPressed: () {
//                           // Action Non
//                         },
//                         style: OutlinedButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                           side: BorderSide(color: Color(0xFF1F2937), width: 2),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           backgroundColor: Colors.transparent,
//                         ),
//                         child: Text(
//                           'Non',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xFF1F2937),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Action Oui
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xFF1F2937),
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           elevation: 0,
//                         ),
//                         child: Text(
//                           'Oui!',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Custom painter pour dessiner le visage souriant
// class SmileFacePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Color(0xFF1F2937)
//       ..strokeWidth = 3
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     // Yeux fermés (lignes courbes)
//     // Oeil gauche
//     final leftEyePath = Path();
//     leftEyePath.moveTo(size.width * 0.25, size.height * 0.3);
//     leftEyePath.quadraticBezierTo(
//       size.width * 0.3,
//       size.height * 0.35,
//       size.width * 0.35,
//       size.height * 0.3,
//     );
//     canvas.drawPath(leftEyePath, paint);

//     // Oeil droit
//     final rightEyePath = Path();
//     rightEyePath.moveTo(size.width * 0.65, size.height * 0.3);
//     rightEyePath.quadraticBezierTo(
//       size.width * 0.7,
//       size.height * 0.35,
//       size.width * 0.75,
//       size.height * 0.3,
//     );
//     canvas.drawPath(rightEyePath, paint);

//     // Sourire
//     final smilePath = Path();
//     smilePath.moveTo(size.width * 0.2, size.height * 0.6);
//     smilePath.quadraticBezierTo(
//       size.width * 0.5,
//       size.height * 0.9,
//       size.width * 0.8,
//       size.height * 0.6,
//     );
//     canvas.drawPath(smilePath, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// =======================  =================================

// import 'package:flutter/material.dart';

// class TestimonialPage extends StatelessWidget {
//   const TestimonialPage({Key? key}) : super(key: key);

//   final List<Map<String, dynamic>> testimonials = const [
//     {
//       'avatar': 'https://i.pravatar.cc/150?img=47',
//       'text':
//           'This app is so cool! It really made my kids start engaging more!',
//     },
//     {
//       'avatar': 'https://i.pravatar.cc/150?img=32',
//       'text':
//           'Amazing progress in just 2 weeks! My daughter loves learning now.',
//     },
//     {
//       'avatar': 'https://i.pravatar.cc/150?img=65',
//       'text': 'Best educational app ever! Highly recommend to all parents.',
//     },
//   ];

//   Widget _buildTestimonialCard(int index) {
//     return Container(
//       width: 300,
//       padding: EdgeInsets.all(24),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.15),
//             blurRadius: 20,
//             offset: Offset(0, 10),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           CircleAvatar(
//             radius: 35,
//             backgroundImage: NetworkImage(testimonials[index]['avatar']),
//           ),
//           SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               5,
//               (starIndex) =>
//                   Icon(Icons.star, color: Color(0xFFFBBF24), size: 24),
//             ),
//           ),
//           SizedBox(height: 16),
//           Text(
//             testimonials[index]['text'],
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 15,
//               color: Color(0xFF6B7280),
//               height: 1.5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFF4ADE80), Color(0xFF34D399)],
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 50),
//                       Text(
//                         '93%',
//                         style: TextStyle(
//                           fontSize: 80,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF1F2937),
//                           height: 1.0,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         'des parents sont\nsatisfaits des progrès\nde leurs enfants\naprès seulement 2\nsemaines',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF1F2937),
//                           height: 1.3,
//                         ),
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 240,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     padding: EdgeInsets.zero,
//                     itemCount: 3,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: EdgeInsets.only(right: index == 2 ? 0 : 20),
//                         child: _buildTestimonialCard(index),
//                       );
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Action du bouton
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF1F2937),
//                       padding: EdgeInsets.symmetric(vertical: 18),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Continuer',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ---------------------------------------Homework Log---------------------------------------------

// import 'package:flutter/material.dart';

// class HomeworkListPage extends StatelessWidget {
//   const HomeworkListPage({Key? key}) : super(key: key);

//   final List<Map<String, dynamic>> homeworks = const [
//     {'title': 'English homework 1', 'date': '12 January 2025', 'points': '2 points earned!'},
//     {'title': 'English homework 2', 'date': '12 January 2025', 'points': '2 points earned!'},
//     {'title': 'English homework 3', 'date': '12 January 2025', 'points': '2 points earned!'},
//     {'title': 'English homework 4', 'date': '12 January 2025', 'points': '2 points earned!'},
//     {'title': 'English homework 5', 'date': '12 January 2025', 'points': '2 points earned!'},
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
//             // Card jaune "New homework"
//             Container(
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Color(0xFFFACC15),
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.15),
//                     blurRadius: 20,
//                     offset: Offset(0, 8),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.add,
//                       color: Color(0xFFFACC15),
//                       size: 28,
//                     ),
//                   ),
//                   SizedBox(width: 16),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'New homework',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         'Add your homework to get feedback',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
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
//             // Liste des devoirs
//             Expanded(
//               child: ListView.builder(
//                 itemCount: homeworks.length,
//                 itemBuilder: (context, index) {
//                   return _buildHomeworkCard(
//                     homeworks[index]['title'],
//                     homeworks[index]['date'],
//                     homeworks[index]['points'],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHomeworkCard(String title, String date, String points) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16),
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 16,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Image du cahier
//           Container(
//             width: 60,
//             height: 60,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(
//                 color: Color(0xFFFACC15),
//                 width: 3,
//               ),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(9),
//               child: Container(
//                 color: Color(0xFFE5E7EB),
//                 child: Icon(
//                   Icons.description,
//                   color: Color(0xFF6B7280),
//                   size: 32,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 16),
//           // Titre et date
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 6),
//                 Text(
//                   date,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Color(0xFF6B7280),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Badge points
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             decoration: BoxDecoration(
//               color: Color(0xFFFACC15),
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Text(
//               points,
//               style: TextStyle(
//                 fontSize: 13,
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

// ------------------------------ Subject ----------------------------------

// import 'package:flutter/material.dart';

// class NameHomeworkPage extends StatefulWidget {
//   const NameHomeworkPage({Key? key}) : super(key: key);

//   @override
//   State<NameHomeworkPage> createState() => _NameHomeworkPageState();
// }

// class _NameHomeworkPageState extends State<NameHomeworkPage> {
//   String _selectedSubject = 'English';
//   TextEditingController get _nameController => TextEditingController(text: '$_selectedSubject homework');

//   final List<String> subjects = [
//     'Français',
//     'Mathématiques',
//     'Langues vivantes',
//     'Histoire-géographie',
//     'Physique-chimie',
//     'Sciences de la vie et de la Terre',
//     'Technologie',
//     'Éducation physique et sportive',
//     'Enseignement moral et civique',
//     'English',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF5F5F5),
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             // Action retour
//           },
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: GestureDetector(
//               onTap: () {
//                 // Action fermer
//               },
//               child: Icon(
//                 Icons.close,
//                 color: Colors.black,
//                 size: 28,
//               ),
//             ),
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(1.0),
//           child: Container(
//             color: Color(0xFFE5E7EB),
//             height: 1.0,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Spacer(),
//             // Titre
//             Text(
//               'Name your homework',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),
//             SizedBox(height: 40),
//             // Label "Nom"
//             Text(
//               'Nom',
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 8),
//             // Champ de texte
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 hintText: 'English homework',
//                 hintStyle: TextStyle(
//                   color: Color(0xFF9CA3AF),
//                 ),
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(
//                     color: Color(0xFFE5E7EB),
//                     width: 1,
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(
//                     color: Color(0xFFE5E7EB),
//                     width: 1,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(
//                     color: Colors.black,
//                     width: 2,
//                   ),
//                 ),
//                 contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
//               ),
//             ),
//             SizedBox(height: 24),
//             // Label "Subject"
//             Text(
//               'Subject',
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 8),
//             // Dropdown
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 border: Border.all(
//                   color: Color(0xFFE5E7EB),
//                   width: 1,
//                 ),
//               ),
//               child: DropdownButtonFormField<String>(
//                 value: _selectedSubject,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
//                 ),
//                 icon: Icon(Icons.keyboard_arrow_down, color: Colors.black),
//                 dropdownColor: Colors.white,
//                 items: subjects.map((String subject) {
//                   return DropdownMenuItem<String>(
//                     value: subject,
//                     child: Text(
//                       subject,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedSubject = newValue!;
//                   });
//                 },
//               ),
//             ),
//             Spacer(),
//             // Bouton "Continuer"
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Action continuer
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF1F2937),
//                   padding: EdgeInsets.symmetric(vertical: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Continuer',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }
// }

// import 'package:flutter/material.dart';

// class NameHomeworkPage extends StatefulWidget {
//   const NameHomeworkPage({super.key});

//   @override
//   State<NameHomeworkPage> createState() => _NameHomeworkPageState();
// }

// class _NameHomeworkPageState extends State<NameHomeworkPage> {
//   String _selectedSubject = 'English';
//   late TextEditingController _nameController;

//   // ✅ Getter pour lire la valeur
//   String get selectedSubject => _selectedSubject;

//   // ✅ Setter pour modifier la valeur proprement
//   set selectedSubject(String value) {
//     setState(() {
//       _selectedSubject = value;
//       _nameController.text = '$_selectedSubject homework';
//     });
//   }

//   final List<String> subjects = [
//     'Français',
//     'Mathématiques',
//     'Langues vivantes',
//     'Histoire-géographie',
//     'Physique-chimie',
//     'Sciences de la vie et de la Terre',
//     'Technologie',
//     'Éducation physique et sportive',
//     'Enseignement moral et civique',
//     'English',
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _nameController = TextEditingController(text: '$_selectedSubject homework');
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFF5F5F5),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: GestureDetector(
//               onTap: () => Navigator.pop(context),
//               child: const Icon(Icons.close, color: Colors.black, size: 28),
//             ),
//           ),
//         ],
//         bottom: const PreferredSize(
//           preferredSize: Size.fromHeight(1.0),
//           child: Divider(color: Color(0xFFE5E7EB), height: 1.0),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Spacer(),
//             const Text(
//               'Name your homework',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),
//             const SizedBox(height: 40),
//             const Text(
//               'Nom',
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 hintText: 'English homework',
//                 hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFE5E7EB),
//                     width: 1,
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFE5E7EB),
//                     width: 1,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: const BorderSide(color: Colors.black, width: 2),
//                 ),
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 18,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//             const Text(
//               'Subject',
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
//               ),
//               child: DropdownButtonFormField<String>(
//                 value: _selectedSubject,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 20,
//                     vertical: 18,
//                   ),
//                 ),
//                 icon: const Icon(
//                   Icons.keyboard_arrow_down,
//                   color: Colors.black,
//                 ),
//                 dropdownColor: Colors.white,
//                 items: subjects.map((String subject) {
//                   return DropdownMenuItem<String>(
//                     value: subject,
//                     child: Text(
//                       subject,
//                       style: const TextStyle(fontSize: 16, color: Colors.black),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   if (newValue != null) {
//                     selectedSubject = newValue; // ✅ utilise le setter ici
//                   }
//                 },
//               ),
//             ),
//             const Spacer(),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   debugPrint('📘 Sujet sélectionné : $selectedSubject');
//                   debugPrint('✏️ Nom du devoir : ${_nameController.text}');
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFF1F2937),
//                   padding: const EdgeInsets.symmetric(vertical: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: const Text(
//                   'Continuer',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ------------------------------------------------  Loaded  ------------------------------------------------

// import 'package:flutter/material.dart';

// class AnalyzingHomeworkPage extends StatelessWidget {
//   const AnalyzingHomeworkPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFACC15),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Spacer(flex: 2),
//               // Illustration avec deux formes arrondies
//               SizedBox(
//                 height: 200,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     // Forme orange plus grande (derrière)
//                     Positioned(
//                       right: 60,
//                       top: 20,
//                       child: Container(
//                         width: 100,
//                         height: 140,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFF97316),
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                         child: Center(
//                           child: CustomPaint(
//                             size: Size(40, 20),
//                             painter: SmileFacePainter(),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // Forme orange plus petite (devant)
//                     Positioned(
//                       left: 60,
//                       bottom: 20,
//                       child: Container(
//                         width: 80,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFEF4444),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         child: Center(
//                           child: CustomPaint(
//                             size: Size(30, 15),
//                             painter: SmileFacePainter(),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 60),
//               // Titre
//               Text(
//                 'Analysing homework...',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF1F2937),
//                 ),
//               ),
//               SizedBox(height: 12),
//               // Description
//               Text(
//                 'Boëtia is analysing the uploaded info.docs',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 15, color: Color(0xFF1F2937)),
//               ),
//               Spacer(flex: 3),
//               // Bouton "Annuler la leçon"
//               SizedBox(
//                 width: double.infinity,
//                 child: OutlinedButton(
//                   onPressed: () {
//                     // Action annuler
//                   },
//                   style: OutlinedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(vertical: 18),
//                     side: BorderSide(color: Color(0xFF1F2937), width: 2),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                   child: Text(
//                     'Annuler la leçon',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xFF1F2937),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Custom painter pour dessiner le visage souriant
// class SmileFacePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Color(0xFF1F2937)
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     // Yeux fermés (lignes courbes)
//     // Oeil gauche
//     final leftEyePath = Path();
//     leftEyePath.moveTo(size.width * 0.3, size.height * 0.3);
//     leftEyePath.quadraticBezierTo(
//       size.width * 0.35,
//       size.height * 0.35,
//       size.width * 0.4,
//       size.height * 0.3,
//     );
//     canvas.drawPath(leftEyePath, paint);

//     // Oeil droit
//     final rightEyePath = Path();
//     rightEyePath.moveTo(size.width * 0.6, size.height * 0.3);
//     rightEyePath.quadraticBezierTo(
//       size.width * 0.65,
//       size.height * 0.35,
//       size.width * 0.7,
//       size.height * 0.3,
//     );
//     canvas.drawPath(rightEyePath, paint);

//     // Sourire
//     final smilePath = Path();
//     smilePath.moveTo(size.width * 0.25, size.height * 0.6);
//     smilePath.quadraticBezierTo(
//       size.width * 0.5,
//       size.height * 0.85,
//       size.width * 0.75,
//       size.height * 0.6,
//     );
//     canvas.drawPath(smilePath, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// -------------------------------------------------  TakeAnother  ------------------------------------------------

// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class PointsEarnedPage extends StatelessWidget {
//   const PointsEarnedPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFACC15),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Spacer(flex: 2),
//               // Étoile orange avec visage
//               CustomPaint(
//                 size: Size(120, 120),
//                 painter: StarWithFacePainter(),
//               ),
//               SizedBox(height: 60),
//               // Titre
//               Text(
//                 'You\'ve earned\n2 points!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   height: 1.2,
//                 ),
//               ),
//               SizedBox(height: 16),
//               // Description
//               Text(
//                 'You completed your homework today.\nGreat work!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                   height: 1.5,
//                 ),
//               ),
//               Spacer(flex: 3),
//               // Bouton "Collect points"
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Action collecter points
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF1F2937),
//                     padding: EdgeInsets.symmetric(vertical: 18),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: Text(
//                     'Collect points',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StarWithFacePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);

//     // Dessiner l'étoile orange
//     final starPaint = Paint()
//       ..color = Color(0xFFF97316)
//       ..style = PaintingStyle.fill;

//     final path = Path();
//     final outerRadius = size.width / 2;
//     final innerRadius = outerRadius * 0.4;
//     final points = 5;

//     for (int i = 0; i < points * 2; i++) {
//       final radius = i.isEven ? outerRadius : innerRadius;
//       final angle = (i * math.pi / points) - math.pi / 2;
//       final x = center.dx + radius * math.cos(angle);
//       final y = center.dy + radius * math.sin(angle);

//       if (i == 0) {
//         path.moveTo(x, y);
//       } else {
//         path.lineTo(x, y);
//       }
//     }
//     path.close();
//     canvas.drawPath(path, starPaint);

//     // Dessiner l'étoile blanche plus petite en haut à droite
//     final whiteStarPaint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;

//     final whiteStarCenter = Offset(size.width * 0.7, size.height * 0.2);
//     final whiteStarPath = Path();
//     final whiteOuterRadius = size.width * 0.12;
//     final whiteInnerRadius = whiteOuterRadius * 0.4;

//     for (int i = 0; i < points * 2; i++) {
//       final radius = i.isEven ? whiteOuterRadius : whiteInnerRadius;
//       final angle = (i * math.pi / points) - math.pi / 2;
//       final x = whiteStarCenter.dx + radius * math.cos(angle);
//       final y = whiteStarCenter.dy + radius * math.sin(angle);

//       if (i == 0) {
//         whiteStarPath.moveTo(x, y);
//       } else {
//         whiteStarPath.lineTo(x, y);
//       }
//     }
//     whiteStarPath.close();
//     canvas.drawPath(whiteStarPath, whiteStarPaint);

//     // Dessiner le visage sur l'étoile orange
//     final facePaint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 3
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     // Yeux fermés (arcs)
//     // Oeil gauche
//     final leftEyePath = Path();
//     leftEyePath.moveTo(center.dx - 18, center.dy - 5);
//     leftEyePath.quadraticBezierTo(
//       center.dx - 15,
//       center.dy,
//       center.dx - 12,
//       center.dy - 5,
//     );
//     canvas.drawPath(leftEyePath, facePaint);

//     // Oeil droit
//     final rightEyePath = Path();
//     rightEyePath.moveTo(center.dx + 12, center.dy - 5);
//     rightEyePath.quadraticBezierTo(
//       center.dx + 15,
//       center.dy,
//       center.dx + 18,
//       center.dy - 5,
//     );
//     canvas.drawPath(rightEyePath, facePaint);

//     // Sourire
//     final smilePath = Path();
//     smilePath.moveTo(center.dx - 15, center.dy + 10);
//     smilePath.quadraticBezierTo(
//       center.dx,
//       center.dy + 20,
//       center.dx + 15,
//       center.dy + 10,
//     );
//     canvas.drawPath(smilePath, facePaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

//  --------------------------------------------------------------------------------- TakePhoto ------------------------------------------------

// import 'package:flutter/material.dart';

// class UploadWordsPage extends StatelessWidget {
//   const UploadWordsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF5F5F5),
//         elevation: 0,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0, top: 8.0),
//             child: GestureDetector(
//               onTap: () {
//                 // Action fermer
//               },
//               child: Icon(Icons.close, color: Colors.black, size: 28),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Spacer(flex: 2),
//             // Titre
//             Text(
//               'Start by uploading a set of words to include',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),
//             SizedBox(height: 16),
//             // Description
//             Text(
//               'Boetia wil generate a specific quiz using these words',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Color(0xFF6B7280),
//                 height: 1.5,
//               ),
//             ),
//             Spacer(flex: 3),
//             // Bouton "Take photo"
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Action prendre photo
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF1F2937),
//                   padding: EdgeInsets.symmetric(vertical: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Take photo',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// -----------------------------------------------------------------------------------------------------------------------------------------

//  ========================================= Dictation 9 ==========================================

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DictationDesign extends StatelessWidget {
//   final String dictationText;
//   final int currentPage;
//   final bool isLoading;
//   final VoidCallback onGenerateAnother;
//   final VoidCallback onCorrectDictation;
//   final VoidCallback onClose;
//   final Function(int) onPageChanged;

//   const DictationDesign({
//     super.key,
//     required this.dictationText,
//     required this.currentPage,
//     required this.isLoading,
//     required this.onGenerateAnother,
//     required this.onCorrectDictation,
//     required this.onClose,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Bouton close en haut à droite
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: onClose,
//                   child: Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(color: Colors.transparent),
//                     child: Icon(Icons.close, color: Colors.black, size: 28),
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 24),

//             // Card avec bordure verte - PageView pour swiper
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: PageView.builder(
//                   itemCount: 3,
//                   onPageChanged: onPageChanged,
//                   clipBehavior: Clip.none,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 32.0,
//                         vertical: 16.0,
//                       ),
//                       child: Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           border: Border.all(
//                             color: Color(0xFF10B981),
//                             width: 3,
//                           ),
//                           boxShadow: [
//                             // Shadow en bas - plus visible
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.15),
//                               blurRadius: 20,
//                               spreadRadius: 5,
//                               offset: Offset(0, 10),
//                             ),
//                           ],
//                         ),
//                         child: SingleChildScrollView(
//                           child: Padding(
//                             padding: const EdgeInsets.all(24.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Dictation',
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 28,
//                                     fontWeight: FontWeight.w700,
//                                     color: Color(0xFF1C1C1C),
//                                   ),
//                                 ),
//                                 SizedBox(height: 16),
//                                 Text(
//                                   dictationText,
//                                   style: GoogleFonts.inter(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w400,
//                                     color: Color(0xFF1C1C1C),
//                                     height: 1.6,
//                                     fontStyle: FontStyle.italic,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),

//             SizedBox(height: 24),

//             // Indicateurs de page
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: List.generate(
//             //     3,
//             //     (index) => Container(
//             //       margin: EdgeInsets.symmetric(horizontal: 4),
//             //       width: 8,
//             //       height: 8,
//             //       decoration: BoxDecoration(
//             //         color: index == currentPage
//             //             ? Color(0xFF10B981)
//             //             : Color(0xFFD1D5DB),
//             //         shape: BoxShape.circle,
//             //       ),
//             //     ),
//             //   ),
//             // ),

//             // Indicateurs de page avec bordure verte
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 3,
//                 (index) => Container(
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   width: 12,
//                   height: 12,
//                   decoration: BoxDecoration(
//                     color: index == currentPage
//                         ? Color(0xFF10B981) // Vert actif
//                         : Colors.white, // Blanc inactif
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Color(0xFF10B981), // Bordure verte pour tous
//                       width: 2,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 16),

//             // Boutons
//             Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Column(
//                 children: [
//                   // Bouton Generate another
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(28),
//                       border: Border.all(color: Color(0xFF1C1C1C), width: 2),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onGenerateAnother,
//                         borderRadius: BorderRadius.circular(28),
//                         child: Center(
//                           child: Text(
//                             'Generate another',
//                             style: GoogleFonts.inter(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: Color(0xFF1C1C1C),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 16),

//                   // Bouton Correct dictation
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     decoration: BoxDecoration(
//                       color: Color(0xFF1C1C1C),
//                       borderRadius: BorderRadius.circular(28),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onCorrectDictation,
//                         borderRadius: BorderRadius.circular(28),
//                         child: Center(
//                           child: isLoading
//                               ? SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: CircularProgressIndicator(
//                                     strokeWidth: 2,
//                                     valueColor: AlwaysStoppedAnimation<Color>(
//                                       Colors.white,
//                                     ),
//                                   ),
//                                 )
//                               : Text(
//                                   'Correct dictation',
//                                   style: GoogleFonts.inter(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                         ),
//                       ),
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
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DictationDesign extends StatelessWidget {
//   final List<String> dictations;
//   final int currentPage;
//   final bool isLoading;
//   final VoidCallback onGenerateAnother;
//   final VoidCallback onCorrectDictation;
//   final VoidCallback onClose;
//   final Function(int) onPageChanged;

//   const DictationDesign({
//     super.key,
//     required this.dictations,
//     required this.currentPage,
//     required this.isLoading,
//     required this.onGenerateAnother,
//     required this.onCorrectDictation,
//     required this.onClose,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Bouton close
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: onClose,
//                   child: const Icon(Icons.close, color: Colors.black, size: 28),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 24),

//             // PageView avec 3 dictations
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: PageView.builder(
//                   itemCount: dictations.length,
//                   onPageChanged: onPageChanged,
//                   clipBehavior: Clip.none,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 32.0,
//                         vertical: 16.0,
//                       ),
//                       child: Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           border: Border.all(
//                             color: const Color(0xFF10B981),
//                             width: 3,
//                           ),
//                           boxShadow: [
//                             // Ombre visible sur les côtés et en bas
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.15),
//                               blurRadius: 20,
//                               spreadRadius: 5,
//                               offset: const Offset(0, 8),
//                             ),
//                           ],
//                         ),
//                         child: SingleChildScrollView(
//                           child: Padding(
//                             padding: const EdgeInsets.all(24.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Dictation ${index + 1}',
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 28,
//                                     fontWeight: FontWeight.w700,
//                                     color: const Color(0xFF1C1C1C),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 16),
//                                 Text(
//                                   dictations[index],
//                                   style: GoogleFonts.inter(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w400,
//                                     color: const Color(0xFF1C1C1C),
//                                     height: 1.6,
//                                     fontStyle: FontStyle.italic,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),

//             const SizedBox(height: 24),

//             // Indicateurs de page
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 dictations.length,
//                 (index) => AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   margin: const EdgeInsets.symmetric(horizontal: 4),
//                   width: 12,
//                   height: 12,
//                   decoration: BoxDecoration(
//                     color: index == currentPage
//                         ? const Color(0xFF10B981)
//                         : Colors.white,
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xFF10B981),
//                       width: 2,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 16),

//             // Boutons d’action
//             Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Column(
//                 children: [
//                   // Bouton "Generate another"
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(28),
//                       border: Border.all(
//                         color: const Color(0xFF1C1C1C),
//                         width: 2,
//                       ),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onGenerateAnother,
//                         borderRadius: BorderRadius.circular(28),
//                         child: Center(
//                           child: Text(
//                             'Generate another',
//                             style: GoogleFonts.inter(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xFF1C1C1C),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 16),

//                   // Bouton "Correct dictation"
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF1C1C1C),
//                       borderRadius: BorderRadius.circular(28),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onCorrectDictation,
//                         borderRadius: BorderRadius.circular(28),
//                         child: Center(
//                           child: isLoading
//                               ? const SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: CircularProgressIndicator(
//                                     strokeWidth: 2,
//                                     valueColor: AlwaysStoppedAnimation<Color>(
//                                       Colors.white,
//                                     ),
//                                   ),
//                                 )
//                               : Text(
//                                   'Correct dictation',
//                                   style: GoogleFonts.inter(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                         ),
//                       ),
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
// }

//  ========================================= Dictation 4 ==========================================

// import 'package:flutter/material.dart';

// class UploadWordsImagesPage extends StatelessWidget {
//   const UploadWordsImagesPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF5F5F5),
//         elevation: 0,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: GestureDetector(
//               onTap: () {
//                 // Action fermer
//               },
//               child: Icon(Icons.close, color: Colors.black, size: 28),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 40),
//             // Titre
//             Text(
//               'Start by uploading a set of words to include',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),
//             SizedBox(height: 16),
//             // Description
//             Text(
//               'Boetia wil generate a specific quiz using these words',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Color(0xFF6B7280),
//                 height: 1.5,
//               ),
//             ),
//             Spacer(),
//             // 3 images empilées horizontalement avec bordure verte
//             Center(
//               child: SizedBox(
//                 width: 220,
//                 height: 200,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     // Image 3 (arrière)
//                     Positioned(left: 0, child: _buildImageCard()),
//                     // Image 2 (milieu)
//                     Positioned(left: 30, child: _buildImageCard()),
//                     // Image 1 (devant)
//                     Positioned(left: 60, child: _buildImageCard()),
//                   ],
//                 ),
//               ),
//             ),
//             Spacer(),
//             // Bouton "Add another photo"
//             SizedBox(
//               width: double.infinity,
//               child: OutlinedButton(
//                 onPressed: () {
//                   // Action ajouter photo
//                 },
//                 style: OutlinedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 18),
//                   side: BorderSide(color: Colors.black, width: 2),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   backgroundColor: Colors.transparent,
//                 ),
//                 child: Text(
//                   'Add another photo',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             // Bouton "Continue"
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Action continuer
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF1F2937),
//                   padding: EdgeInsets.symmetric(vertical: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Continue',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildImageCard() {
//     return Container(
//       width: 160,
//       height: 180,
//       decoration: BoxDecoration(
//         color: Color(0xFFD1D5DB),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: Color(0xFF10B981), width: 4),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: Container(
//           color: Color(0xFFE5E7EB),
//           child: Center(
//             child: Icon(
//               Icons.image_outlined,
//               size: 50,
//               color: Color(0xFF9CA3AF),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//  ========================================= Dictation 12 ==========================================

// import 'package:flutter/material.dart';

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

//   // ✅ Nombre de points gagnés
//   final String pointsEarned = "2 points earned!";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
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
//                         onTap: () => Navigator.pop(context),
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
//                         pointsEarned,
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
//           onPressed: () {},
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
//             'Collect points',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     );
//   }
// }

//  ========================================= Dictation 6 ==========================================

// import 'package:flutter/material.dart';

// class DictationPreferencesPage extends StatefulWidget {
//   const DictationPreferencesPage({Key? key}) : super(key: key);

//   @override
//   State<DictationPreferencesPage> createState() =>
//       _DictationPreferencesPageState();
// }

// class _DictationPreferencesPageState extends State<DictationPreferencesPage> {
//   String selectedWords = '100 words';
//   String selectedDifficulty = 'Difficult';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF5F5F5),
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             // Action retour
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 10),
//             // Titre
//             Text(
//               'Dictation préférences',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),
//             SizedBox(height: 6),
//             // Sous-titre
//             Text(
//               'Dictées personnalisées et correction',
//               style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
//             ),
//             SizedBox(height: 28),
//             // Label "Nombre de words"
//             Text(
//               'Nombre de words',
//               style: TextStyle(
//                 fontSize: 13,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 10),
//             // Options nombre de mots
//             _buildOptionButton('25 words', selectedWords == '25 words', () {
//               setState(() {
//                 selectedWords = '25 words';
//               });
//             }),
//             SizedBox(height: 10),
//             _buildOptionButton('40 words', selectedWords == '40 words', () {
//               setState(() {
//                 selectedWords = '40 words';
//               });
//             }),
//             SizedBox(height: 10),
//             _buildOptionButton('100 words', selectedWords == '100 words', () {
//               setState(() {
//                 selectedWords = '100 words';
//               });
//             }),
//             SizedBox(height: 24),
//             // Label "Choose difficulté"
//             Text(
//               'Choose difficulté',
//               style: TextStyle(
//                 fontSize: 13,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 10),
//             // Options difficulté
//             _buildOptionButton('Easy', selectedDifficulty == 'Easy', () {
//               setState(() {
//                 selectedDifficulty = 'Easy';
//               });
//             }),
//             SizedBox(height: 10),
//             _buildOptionButton(
//               'Intermediate',
//               selectedDifficulty == 'Intermediate',
//               () {
//                 setState(() {
//                   selectedDifficulty = 'Intermediate';
//                 });
//               },
//             ),
//             SizedBox(height: 10),
//             _buildOptionButton(
//               'Difficult',
//               selectedDifficulty == 'Difficult',
//               () {
//                 setState(() {
//                   selectedDifficulty = 'Difficult';
//                 });
//               },
//             ),
//             Spacer(),
//             // Bouton "Générer la dictée"
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Action générer
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF1F2937),
//                   padding: EdgeInsets.symmetric(vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Générer la dictée',
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildOptionButton(String text, bool isSelected, VoidCallback onTap) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         padding: EdgeInsets.symmetric(vertical: 16),
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.white : Colors.transparent,
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(
//             color: Colors.black,
//             width: isSelected ? 2.5 : 1.5,
//           ),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//  ========================================= Dictation 5 ==========================================

// import 'package:flutter/material.dart';

// class NameDictationPage extends StatefulWidget {
//   const NameDictationPage({Key? key}) : super(key: key);

//   @override
//   State<NameDictationPage> createState() => _NameDictationPageState();
// }

// class _NameDictationPageState extends State<NameDictationPage> {
//   final TextEditingController _nameController = TextEditingController(
//     text: 'Dictation about frogs',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF5F5F5),
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             // Action retour
//           },
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: GestureDetector(
//               onTap: () {
//                 // Action fermer
//               },
//               child: Icon(Icons.close, color: Colors.black, size: 28),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Spacer(flex: 3),
//             // Titre
//             Text(
//               'Name your dictation',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),
//             SizedBox(height: 32),
//             // Label "Nom"
//             Text(
//               'Nom',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 8),
//             // Champ de texte
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 hintText: 'Dictation about frogs',
//                 hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(color: Color(0xFFE5E7EB), width: 1),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(color: Color(0xFFE5E7EB), width: 1),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(color: Colors.black, width: 2),
//                 ),
//                 contentPadding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 18,
//                 ),
//               ),
//             ),
//             Spacer(flex: 2),
//             // Bouton "Continuer"
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Action continuer
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF1F2937),
//                   padding: EdgeInsets.symmetric(vertical: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Continuer',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }
// }

//  ========================================= Dictation 9 V2 ==========================================

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DictationDesign extends StatelessWidget {
//   final List<String> dictations;
//   final int currentPage;
//   final bool isLoading;
//   final VoidCallback onGenerateAnother;
//   final VoidCallback onCorrectDictation;
//   final VoidCallback onClose;
//   final Function(int) onPageChanged;

//   // // 🔊 Nouvelles fonctions pour lecture audio
//   // final Function(int) onStartAudio;
//   // final Function(int) onStopAudio;

//   const DictationDesign({
//     super.key,
//     required this.dictations,
//     required this.currentPage,
//     required this.isLoading,
//     required this.onGenerateAnother,
//     required this.onCorrectDictation,
//     required this.onClose,
//     required this.onPageChanged,
//     // required this.onStartAudio,
//     // required this.onStopAudio,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // === Bouton de fermeture ===
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: onClose,
//                   child: const Icon(Icons.close, color: Colors.black, size: 28),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 24),

//             // === PageView avec plusieurs dictations ===
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: PageView.builder(
//                   itemCount: dictations.length,
//                   onPageChanged: onPageChanged,
//                   clipBehavior: Clip.none,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 32.0,
//                         vertical: 16.0,
//                       ),
//                       child: Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           border: Border.all(
//                             color: const Color(0xFF10B981),
//                             width: 3,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.15),
//                               blurRadius: 20,
//                               spreadRadius: 5,
//                               offset: const Offset(0, 8),
//                             ),
//                           ],
//                         ),
//                         child: SingleChildScrollView(
//                           child: Padding(
//                             padding: const EdgeInsets.all(24.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 // === Titre ===
//                                 Text(
//                                   'Dictation ${index + 1}',
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 28,
//                                     fontWeight: FontWeight.w700,
//                                     color: const Color(0xFF1C1C1C),
//                                   ),
//                                 ),

//                                 const SizedBox(height: 16),

//                                 // === Contenu de la dictée ===
//                                 Text(
//                                   dictations[index],
//                                   style: GoogleFonts.inter(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w400,
//                                     color: const Color(0xFF1C1C1C),
//                                     height: 1.6,
//                                     fontStyle: FontStyle.italic,
//                                   ),
//                                 ),

//                                 // const SizedBox(height: 100),

//                                 // // === Icônes Audio (Start / Stop) ===
//                                 // Row(
//                                 //   mainAxisAlignment: MainAxisAlignment.center,
//                                 //   children: [
//                                 //     IconButton(
//                                 //       icon: const Icon(
//                                 //         Icons.play_circle_fill,
//                                 //         color: Color(0xFF10B981),
//                                 //         size: 40,
//                                 //       ),
//                                 //       onPressed: () => onStartAudio(index),
//                                 //     ),
//                                 //     const SizedBox(width: 16),
//                                 //     IconButton(
//                                 //       icon: const Icon(
//                                 //         Icons.stop_circle,
//                                 //         color: Colors.redAccent,
//                                 //         size: 40,
//                                 //       ),
//                                 //       onPressed: () => onStopAudio(index),
//                                 //     ),
//                                 //   ],
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),

//             const SizedBox(height: 24),

//             // === Indicateurs de page ===
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 dictations.length,
//                 (index) => AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   margin: const EdgeInsets.symmetric(horizontal: 4),
//                   width: 12,
//                   height: 12,
//                   decoration: BoxDecoration(
//                     color: index == currentPage
//                         ? const Color(0xFF10B981)
//                         : Colors.white,
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xFF10B981),
//                       width: 2,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 16),

//             // === Boutons d’action (Generate / Correct) ===
//             Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Column(
//                 children: [
//                   // Bouton "Generate another"
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(28),
//                       border: Border.all(
//                         color: const Color(0xFF1C1C1C),
//                         width: 2,
//                       ),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onGenerateAnother,
//                         borderRadius: BorderRadius.circular(28),
//                         child: Center(
//                           child: Text(
//                             'Generate another',
//                             style: GoogleFonts.inter(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xFF1C1C1C),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 16),

//                   // Bouton "Correct dictation"
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF1C1C1C),
//                       borderRadius: BorderRadius.circular(28),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onCorrectDictation,
//                         borderRadius: BorderRadius.circular(28),
//                         child: Center(
//                           child: isLoading
//                               ? const SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: CircularProgressIndicator(
//                                     strokeWidth: 2,
//                                     valueColor: AlwaysStoppedAnimation<Color>(
//                                       Colors.white,
//                                     ),
//                                   ),
//                                 )
//                               : Text(
//                                   'Correct dictation',
//                                   style: GoogleFonts.inter(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                         ),
//                       ),
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
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DictationDesign extends StatelessWidget {
//   final List<String> dictations;
//   final int currentPage;
//   final bool isLoading;
//   final VoidCallback onGenerateAnother;
//   final VoidCallback onCorrectDictation;
//   final VoidCallback onClose;
//   final Function(int) onPageChanged;

//   const DictationDesign({
//     super.key,
//     required this.dictations,
//     required this.currentPage,
//     required this.isLoading,
//     required this.onGenerateAnother,
//     required this.onCorrectDictation,
//     required this.onClose,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // === Bouton de fermeture ===
//             Padding(
//               padding: EdgeInsets.all(16.w),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: onClose,
//                   child: Icon(Icons.close, color: Colors.black, size: 28.sp),
//                 ),
//               ),
//             ),

//             // === Ligne grise de séparation ===
//             Container(height: 1.h, color: const Color(0xFFEDF0EF)),

//             SizedBox(height: 24.h),

//             // === PageView avec plusieurs dictations (adaptatif avec max 385.h) ===
//             Flexible(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(maxHeight: 385.h),
//                 child: PageView.builder(
//                   itemCount: dictations.length,
//                   onPageChanged: onPageChanged,
//                   clipBehavior: Clip.none,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 32.w,
//                         vertical: 16.h,
//                       ),
//                       child: Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20.r),
//                           border: Border.all(
//                             color: const Color(0xFF10B981),
//                             width: 3.w,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.15),
//                               blurRadius: 20,
//                               spreadRadius: 5,
//                               offset: const Offset(0, 8),
//                             ),
//                           ],
//                         ),
//                         child: SingleChildScrollView(
//                           child: Padding(
//                             padding: EdgeInsets.all(24.w),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 // === Titre ===
//                                 Text(
//                                   'Dictation ${index + 1}',
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 28.sp,
//                                     fontWeight: FontWeight.w700,
//                                     color: const Color(0xFF1C1C1C),
//                                   ),
//                                 ),

//                                 SizedBox(height: 16.h),

//                                 // === Contenu de la dictée ===
//                                 Text(
//                                   dictations[index],
//                                   style: GoogleFonts.inter(
//                                     fontSize: 16.sp,
//                                     fontWeight: FontWeight.w400,
//                                     color: const Color(0xFF1C1C1C),
//                                     height: 1.6,
//                                     fontStyle: FontStyle.italic,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),

//             const Spacer(),

//             // === Indicateurs de page ===
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 dictations.length,
//                 (index) => AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   margin: EdgeInsets.symmetric(horizontal: 4.w),
//                   width: 12.w,
//                   height: 12.w,
//                   decoration: BoxDecoration(
//                     color: index == currentPage
//                         ? const Color(0xFF10B981)
//                         : Colors.white,
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xFF10B981),
//                       width: 2.w,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 24.h),

//             // === Boutons d'action (Generate / Correct) ===
//             Padding(
//               padding: EdgeInsets.all(24.w),
//               child: Column(
//                 children: [
//                   // Bouton "Generate another"
//                   Container(
//                     width: double.infinity,
//                     height: 56.h,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(28.r),
//                       border: Border.all(color: Colors.black, width: 2.w),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onGenerateAnother,
//                         borderRadius: BorderRadius.circular(28.r),
//                         child: Center(
//                           child: Text(
//                             'Generate another',
//                             style: GoogleFonts.inter(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 16.h),

//                   // Bouton "Correct dictation"
//                   Container(
//                     width: double.infinity,
//                     height: 56.h,
//                     decoration: BoxDecoration(
//                       color: isLoading ? Colors.grey[400] : Colors.black,
//                       borderRadius: BorderRadius.circular(28.r),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onCorrectDictation,
//                         borderRadius: BorderRadius.circular(28.r),
//                         child: Center(
//                           child: isLoading
//                               ? SizedBox(
//                                   width: 20.w,
//                                   height: 20.w,
//                                   child: const CircularProgressIndicator(
//                                     strokeWidth: 2,
//                                     valueColor: AlwaysStoppedAnimation<Color>(
//                                       Colors.white,
//                                     ),
//                                   ),
//                                 )
//                               : Text(
//                                   'Correct dictation',
//                                   style: GoogleFonts.inter(
//                                     fontSize: 16.sp,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                         ),
//                       ),
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
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DictationDesign extends StatelessWidget {
//   final List<String> dictations;
//   final int currentPage;
//   final bool isLoading;
//   final VoidCallback onGenerateAnother;
//   final VoidCallback onCorrectDictation;
//   final VoidCallback onClose;
//   final Function(int) onPageChanged;

//   const DictationDesign({
//     super.key,
//     required this.dictations,
//     required this.currentPage,
//     required this.isLoading,
//     required this.onGenerateAnother,
//     required this.onCorrectDictation,
//     required this.onClose,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // Calculer la hauteur approximative du contenu pour la carte actuelle
//     double _calculateCardHeight(String text) {
//       // Estimation de la hauteur du texte
//       // Largeur disponible: largeur écran - padding horizontal (32*2) - padding interne (24*2)
//       final screenWidth = MediaQuery.of(context).size.width;
//       final availableWidth =
//           screenWidth - (64.w + 48.w); // en pixels avec ScreenUtil

//       // Estimation approximative: ~10 pixels par caractère (avec fontSize 16.sp)
//       final charsPerLine = (availableWidth / 10.sp).floor();
//       final estimatedLines = (text.length / charsPerLine).ceil();

//       // Hauteur estimée avec ScreenUtil:
//       // - Padding top: 24.h
//       // - Titre: ~40.h (28.sp avec font weight bold)
//       // - SizedBox: 16.h
//       // - Contenu: estimatedLines * (16.sp * 1.6 line-height) ≈ estimatedLines * 26.h
//       // - Padding bottom: 24.h
//       // - Padding vertical du PageView: 32.h

//       final contentHeight = estimatedLines * 26.h;
//       final totalHeight = 24.h + 40.h + 16.h + contentHeight + 24.h + 32.h;

//       // Retourner min(totalHeight, 385.h)
//       return totalHeight < 385.h ? totalHeight : 385.h;
//     }

//     final currentHeight = _calculateCardHeight(dictations[currentPage]);

//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // === Bouton de fermeture ===
//             Padding(
//               padding: EdgeInsets.all(16.w),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: onClose,
//                   child: Icon(Icons.close, color: Colors.black, size: 28.sp),
//                 ),
//               ),
//             ),

//             // === Ligne grise de séparation ===
//             Container(height: 1.h, color: const Color(0xFFEDF0EF)),

//             SizedBox(height: 24.h),

//             // === PageView avec plusieurs dictations (adaptatif avec max 385.h) ===
//             SizedBox(
//               height: currentHeight,
//               child: PageView.builder(
//                 itemCount: dictations.length,
//                 onPageChanged: onPageChanged,
//                 clipBehavior: Clip.none,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 32.w,
//                       vertical: 16.h,
//                     ),
//                     child: Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20.r),
//                         border: Border.all(
//                           color: const Color(0xFF10B981),
//                           width: 3.w,
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.15),
//                             blurRadius: 20,
//                             spreadRadius: 5,
//                             offset: const Offset(0, 8),
//                           ),
//                         ],
//                       ),
//                       child: SingleChildScrollView(
//                         child: Padding(
//                           padding: EdgeInsets.all(24.w),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               // === Titre ===
//                               Text(
//                                 'Dictation ${index + 1}',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 28.sp,
//                                   fontWeight: FontWeight.w700,
//                                   color: const Color(0xFF1C1C1C),
//                                 ),
//                               ),

//                               SizedBox(height: 16.h),

//                               // === Contenu de la dictée ===
//                               Text(
//                                 dictations[index],
//                                 style: GoogleFonts.inter(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                   color: const Color(0xFF1C1C1C),
//                                   height: 1.6,
//                                   fontStyle: FontStyle.italic,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 24.h),

//             // === Indicateurs de page ===
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 dictations.length,
//                 (index) => AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   margin: EdgeInsets.symmetric(horizontal: 4.w),
//                   width: 12.w,
//                   height: 12.w,
//                   decoration: BoxDecoration(
//                     color: index == currentPage
//                         ? const Color(0xFF10B981)
//                         : Colors.white,
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xFF10B981),
//                       width: 2.w,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const Spacer(),

//             // === Boutons d'action (Generate / Correct) ===
//             Padding(
//               padding: EdgeInsets.all(24.w),
//               child: Column(
//                 children: [
//                   // Bouton "Generate another"
//                   Container(
//                     width: double.infinity,
//                     height: 56.h,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(28.r),
//                       border: Border.all(color: Colors.black, width: 2.w),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onGenerateAnother,
//                         borderRadius: BorderRadius.circular(28.r),
//                         child: Center(
//                           child: Text(
//                             'Generate another',
//                             style: GoogleFonts.inter(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 16.h),

//                   // Bouton "Correct dictation"
//                   Container(
//                     width: double.infinity,
//                     height: 56.h,
//                     decoration: BoxDecoration(
//                       color: isLoading ? Colors.grey[400] : Colors.black,
//                       borderRadius: BorderRadius.circular(28.r),
//                     ),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: isLoading ? null : onCorrectDictation,
//                         borderRadius: BorderRadius.circular(28.r),
//                         child: Center(
//                           child: isLoading
//                               ? SizedBox(
//                                   width: 20.w,
//                                   height: 20.w,
//                                   child: const CircularProgressIndicator(
//                                     strokeWidth: 2,
//                                     valueColor: AlwaysStoppedAnimation<Color>(
//                                       Colors.white,
//                                     ),
//                                   ),
//                                 )
//                               : Text(
//                                   'Correct dictation',
//                                   style: GoogleFonts.inter(
//                                     fontSize: 16.sp,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                         ),
//                       ),
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
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DictationDesign extends StatelessWidget {
  final List<String> dictations;
  final int currentPage;
  final bool isLoading;
  final VoidCallback onGenerateAnother;
  final VoidCallback onCorrectDictation;
  final VoidCallback onClose;
  final Function(int) onPageChanged;

  const DictationDesign({
    super.key,
    required this.dictations,
    required this.currentPage,
    required this.isLoading,
    required this.onGenerateAnother,
    required this.onCorrectDictation,
    required this.onClose,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    // Calculer la hauteur approximative du contenu pour la carte actuelle
    double _calculateCardHeight(String text) {
      // Estimation de la hauteur du texte
      // Largeur disponible: largeur écran - padding horizontal (32*2) - padding interne (24*2)
      final screenWidth = MediaQuery.of(context).size.width;
      final availableWidth =
          screenWidth - (64.w + 48.w); // en pixels avec ScreenUtil

      // Estimation approximative: ~10 pixels par caractère (avec fontSize 16.sp)
      final charsPerLine = (availableWidth / 10.sp).floor();
      final estimatedLines = (text.length / charsPerLine).ceil();

      // Hauteur estimée avec ScreenUtil:
      // - Padding top: 24.h
      // - Titre: ~40.h (28.sp avec font weight bold)
      // - SizedBox: 16.h
      // - Contenu: estimatedLines * (16.sp * 1.6 line-height) ≈ estimatedLines * 26.h
      // - Padding bottom: 24.h
      // - Padding vertical du PageView: 32.h

      final contentHeight = estimatedLines * 26.h;
      final totalHeight = 24.h + 40.h + 16.h + contentHeight + 24.h + 32.h;

      // Retourner min(totalHeight, 385.h)
      return totalHeight < 385.h ? totalHeight : 385.h;
    }

    final currentHeight = _calculateCardHeight(dictations[currentPage]);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background/backgroundWhite.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // === Bouton de fermeture ===
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: onClose,
                    child: Icon(Icons.close, color: Colors.black, size: 28.sp),
                  ),
                ),
              ),

              // === Ligne grise de séparation ===
              Container(height: 1.h, color: const Color(0xFFEDF0EF)),

              SizedBox(height: 24.h),

              // === PageView avec plusieurs dictations (adaptatif avec max 385.h) ===
              SizedBox(
                height: currentHeight,
                child: PageView.builder(
                  itemCount: dictations.length,
                  onPageChanged: onPageChanged,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.w,
                        vertical: 16.h,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: const Color(0xFF10B981),
                            width: 3.w,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 20,
                              spreadRadius: 5,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(24.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // === Titre ===
                                Text(
                                  'Dictation ${index + 1}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF1C1C1C),
                                  ),
                                ),

                                SizedBox(height: 16.h),

                                // === Contenu de la dictée ===
                                Text(
                                  dictations[index],
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF1C1C1C),
                                    height: 1.6,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 24.h),

              // === Indicateurs de page ===
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  dictations.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    width: 12.w,
                    height: 12.w,
                    decoration: BoxDecoration(
                      color: index == currentPage
                          ? const Color(0xFF10B981)
                          : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF10B981),
                        width: 2.w,
                      ),
                    ),
                  ),
                ),
              ),

              Spacer(),

              // === Boutons d'action (Generate / Correct) ===
              Padding(
                padding: EdgeInsets.all(24.w),
                child: Column(
                  children: [
                    // Bouton "Generate another"
                    Container(
                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28.r),
                        border: Border.all(color: Colors.black, width: 2.w),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: isLoading ? null : onGenerateAnother,
                          borderRadius: BorderRadius.circular(28.r),
                          child: Center(
                            child: Text(
                              'Generate another',
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),

                    // Bouton "Correct dictation"
                    Container(
                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: isLoading ? Colors.grey[400] : Colors.black,
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: isLoading ? null : onCorrectDictation,
                          borderRadius: BorderRadius.circular(28.r),
                          child: Center(
                            child: isLoading
                                ? SizedBox(
                                    width: 20.w,
                                    height: 20.w,
                                    child: const CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white,
                                      ),
                                    ),
                                  )
                                : Text(
                                    'Correct dictation',
                                    style: GoogleFonts.inter(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//  ========================================= Child Class Page ==========================================

// import 'package:flutter/material.dart';

// class ChildClassPage extends StatefulWidget {
//   const ChildClassPage({Key? key}) : super(key: key);

//   @override
//   State<ChildClassPage> createState() => _ChildClassPageState();
// }

// class _ChildClassPageState extends State<ChildClassPage> {
//   String selectedClass = 'CE1';
//   final List<String> classes = ['CP', 'CE1', 'CE2', 'CM1'];

//   late FixedExtentScrollController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = FixedExtentScrollController(
//       initialItem: classes.indexOf(selectedClass),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _selectClass(int index) {
//     setState(() {
//       selectedClass = classes[index];
//       _controller.animateToItem(
//         index,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     int selectedIndex = classes.indexOf(selectedClass);

//     return Scaffold(
//       backgroundColor: const Color(0xFFFACC15),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Spacer(flex: 2),

//             // Question
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.0),
//               child: Text(
//                 'En quelle classe est votre enfant?',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   height: 1.2, // correspond à 120 %
//                   letterSpacing: 0.0, // correspond à 0 %
//                 ),
//               ),
//             ),

//             const SizedBox(height: 32),

//             // Liste centrée avec effet 3D léger + clic
//             Expanded(
//               flex: 4,
//               child: Center(
//                 child: ListWheelScrollView.useDelegate(
//                   controller: _controller,
//                   itemExtent: 80,
//                   perspective: 0.004,
//                   diameterRatio: 2.0,
//                   physics: const FixedExtentScrollPhysics(),
//                   onSelectedItemChanged: (index) {
//                     setState(() {
//                       selectedClass = classes[index];
//                     });
//                   },
//                   childDelegate: ListWheelChildBuilderDelegate(
//                     builder: (context, index) {
//                       if (index < 0 || index >= classes.length) return null;

//                       final isSelected = index == selectedIndex;
//                       final double scale = isSelected ? 1.0 : 0.8;

//                       return GestureDetector(
//                         onTap: () => _selectClass(index),
//                         child: AnimatedContainer(
//                           duration: const Duration(milliseconds: 250),
//                           curve: Curves.easeInOut,
//                           margin: const EdgeInsets.symmetric(vertical: 8),
//                           width: isSelected ? 311 : 260,
//                           height: isSelected ? 54 : 40,
//                           decoration: BoxDecoration(
//                             color: Colors.transparent,
//                             borderRadius: BorderRadius.circular(30),
//                             border: isSelected
//                                 ? Border.all(color: Colors.black, width: 2.5)
//                                 : null,
//                           ),
//                           child: Center(
//                             child: Transform.scale(
//                               scale: scale,
//                               child: Text(
//                                 classes[index],
//                                 style: TextStyle(
//                                   fontSize: isSelected ? 32 : 22,
//                                   fontWeight: isSelected
//                                       ? FontWeight.bold
//                                       : FontWeight.w500,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                     childCount: classes.length,
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 140),

//             // Bouton Continuer
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24.0),
//               child: Center(
//                 child: SizedBox(
//                   width: 311,
//                   height: 48,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Action continuer
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: const Text(
//                       'Continuer',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 54),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ChildClassPage extends StatefulWidget {
//   const ChildClassPage({Key? key}) : super(key: key);

//   @override
//   State<ChildClassPage> createState() => _ChildClassPageState();
// }

// class _ChildClassPageState extends State<ChildClassPage> {
//   String selectedClass = 'CE1';
//   final List<String> classes = ['CP', 'CE1', 'CE2', 'CM1', 'Autre'];

//   late FixedExtentScrollController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = FixedExtentScrollController(
//       initialItem: classes.indexOf(selectedClass),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _selectClass(int index) {
//     setState(() {
//       selectedClass = classes[index];
//       _controller.animateToItem(
//         index,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     int selectedIndex = classes.indexOf(selectedClass);

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/yellow_background.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 100.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Spacer(),

//                 // === Titre ===
//                 Text(
//                   'En quelle classe est votre enfant?',
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                     letterSpacing: 0.0,
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Liste centrée avec effet 3D léger + clic ===
//                 Expanded(
//                   child: Center(
//                     child: ListWheelScrollView.useDelegate(
//                       controller: _controller,
//                       itemExtent: 80.h,
//                       perspective: 0.004,
//                       diameterRatio: 2.0,
//                       physics: const FixedExtentScrollPhysics(),
//                       onSelectedItemChanged: (index) {
//                         setState(() {
//                           selectedClass = classes[index];
//                         });
//                       },
//                       childDelegate: ListWheelChildBuilderDelegate(
//                         builder: (context, index) {
//                           if (index < 0 || index >= classes.length) return null;

//                           final isSelected = index == selectedIndex;
//                           final double scale = isSelected ? 1.0 : 0.8;

//                           return GestureDetector(
//                             onTap: () => _selectClass(index),
//                             child: AnimatedContainer(
//                               duration: const Duration(milliseconds: 250),
//                               curve: Curves.easeInOut,
//                               margin: EdgeInsets.symmetric(vertical: 8.h),
//                               width: isSelected ? 311.w : 260.w,
//                               height: isSelected ? 54.h : 40.h,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 borderRadius: BorderRadius.circular(30.r),
//                                 border: isSelected
//                                     ? Border.all(
//                                         color: Colors.black,
//                                         width: 2.5.w,
//                                       )
//                                     : null,
//                               ),
//                               child: Center(
//                                 child: Transform.scale(
//                                   scale: scale,
//                                   child: Text(
//                                     classes[index],
//                                     style: TextStyle(
//                                       fontSize: isSelected ? 32.sp : 22.sp,
//                                       fontWeight: isSelected
//                                           ? FontWeight.bold
//                                           : FontWeight.w500,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         childCount: classes.length,
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Bouton "Continuer" ===
//                 SizedBox(
//                   width: double.infinity,
//                   height: 56.h,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Action continuer
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Continuer',
//                       style: TextStyle(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ---------------------------------------------------------------

// import 'package:flutter/material.dart';

// class ChildClassPage extends StatefulWidget {
//   const ChildClassPage({Key? key}) : super(key: key);

//   @override
//   State<ChildClassPage> createState() => _ChildClassPageState();
// }

// class _ChildClassPageState extends State<ChildClassPage> {
//   String selectedClass = 'CE1';
//   final List<String> classes = ['CP', 'CE1', 'CE2', 'CM1'];

//   late FixedExtentScrollController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = FixedExtentScrollController(
//       initialItem: classes.indexOf(selectedClass),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _selectClass(int index) {
//     setState(() {
//       selectedClass = classes[index];
//       _controller.animateToItem(
//         index,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     int selectedIndex = classes.indexOf(selectedClass);

//     return Scaffold(
//       extendBodyBehindAppBar:
//           true, // <-- permet à l'image de dépasser la status bar
//       body: Stack(
//         children: [
//           // Background Image
//           SizedBox(
//             width: double.infinity,
//             height: double.infinity,
//             child: Image.asset('assets/images/Class.png', fit: BoxFit.cover),
//           ),

//           // Contenu principal
//           Padding(
//             padding: const EdgeInsets.only(top: 40.0), // espace pour status bar
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // const Spacer(flex: 2),

//                 // Question
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.0),
//                   child: Text(
//                     'En quelle classe est votre enfant?',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       height: 1.2,
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 32),

//                 // Liste centrée avec hauteur fixe de 170
//                 SizedBox(
//                   height: 170,
//                   child: Center(
//                     child: ListWheelScrollView.useDelegate(
//                       controller: _controller,
//                       itemExtent: 60,
//                       perspective: 0.004,
//                       diameterRatio: 2.0,
//                       physics: const FixedExtentScrollPhysics(),
//                       onSelectedItemChanged: (index) {
//                         setState(() {
//                           selectedClass = classes[index];
//                         });
//                       },
//                       childDelegate: ListWheelChildBuilderDelegate(
//                         builder: (context, index) {
//                           if (index < 0 || index >= classes.length) return null;

//                           final isSelected = index == selectedIndex;
//                           final double scale = isSelected ? 1.0 : 0.8;

//                           return GestureDetector(
//                             onTap: () => _selectClass(index),
//                             child: AnimatedContainer(
//                               duration: const Duration(milliseconds: 250),
//                               curve: Curves.easeInOut,
//                               margin: const EdgeInsets.symmetric(vertical: 6),
//                               width: isSelected ? 311 : 260,
//                               height: isSelected ? 54 : 40,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 borderRadius: BorderRadius.circular(30),
//                                 border: isSelected
//                                     ? Border.all(
//                                         color: Colors.black,
//                                         width: 2.5,
//                                       )
//                                     : null,
//                               ),
//                               child: Center(
//                                 child: Transform.scale(
//                                   scale: scale,
//                                   child: Text(
//                                     classes[index],
//                                     style: TextStyle(
//                                       fontSize: isSelected ? 32 : 22,
//                                       fontWeight: isSelected
//                                           ? FontWeight.bold
//                                           : FontWeight.w500,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         childCount: classes.length,
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 140),

//                 // Bouton Continuer
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                   child: Center(
//                     child: SizedBox(
//                       width: 311,
//                       height: 48,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Action continuer
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(100),
//                           ),
//                           elevation: 0,
//                         ),
//                         child: const Text(
//                           'Continuer',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 54),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
