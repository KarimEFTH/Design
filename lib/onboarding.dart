// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class ParentConsentPage extends StatelessWidget {
//   const ParentConsentPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/Walkthrough2.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 32.0,
//               right: 32.0,
//               top: 48.0,
//               bottom: 54.0,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(flex: 1),

//                 const Text(
//                   'Souhaitez vous\ndonner les keys de la\nréussite à votre\nenfant?',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 const Spacer(flex: 3),

//                 Center(
//                   child: Image.asset(
//                     'assets/images/smileWalkthrough2.png',
//                     fit: BoxFit
//                         .none, // ou tu peux même enlever fit pour garder exactement la taille originale
//                   ),
//                 ),

//                 const Spacer(flex: 4),

//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(28),
//                           border: Border.all(color: Colors.black, width: 2),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'Non',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),

//                     const SizedBox(width: 16),

//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(28),
//                           border: Border.all(color: Colors.black, width: 2),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'Oui!',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ----------------------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class ProgressLoadingScreen extends StatelessWidget {
//   final String userName;

//   const ProgressLoadingScreen({Key? key, this.userName = 'Guillaume'})
//     : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         padding: EdgeInsets.only(
//           left: 32.0,
//           right: 32.0,
//           top: 48.0,
//           bottom: 54.0,
//         ),
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/Walkthrough3.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // const SizedBox(height: 60),
//               Spacer(flex: 1),
//               // Texte en haut
//               RichText(
//                 textAlign: TextAlign.start,
//                 text: TextSpan(
//                   children: [
//                     const TextSpan(
//                       text: "On prépare l'espace\nsur mesure de\n",

//                       style: TextStyle(
//                         fontSize: 28, // taille du texte principal
//                         height: 1.2,
//                         color: Colors.black,

//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     TextSpan(
//                       text: "$userName!",
//                       style: const TextStyle(
//                         fontSize: 40, // taille différente pour le nom
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const Spacer(flex: 3),
//               // Indicateur de progression circulaire avec image
//               Image.asset('assets/images/Component.png', fit: BoxFit.none),

//               const Spacer(flex: 6),
//               // Bouton en bas
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Action continuer
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 12,
//                       horizontal: 12,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: const Text(
//                     'Continuer',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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

// ------------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class TestimonialPage extends StatelessWidget {
//   const TestimonialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/Walkthrough4.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 32.0,
//               right: 32.0,
//               top: 48,
//               bottom: 54,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(flex: 1),

//                 // ===== Grande statistique =====
//                 const Text(
//                   '93%',
//                   style: TextStyle(
//                     fontSize: 64,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 // ===== Texte descriptif =====
//                 const Text(
//                   'des parents sont satisfaits des progrès\nde leurs enfants après seulement 2\nsemaines',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // ===== Carte de témoignage =====
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         blurRadius: 20,
//                         offset: const Offset(0, 10),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     children: [
//                       // Avatar
//                       ClipOval(
//                         child: Image.asset(
//                           'assets/images/Avatar.svg',
//                           width: 40,
//                           height: 40,
//                           fit: BoxFit.cover,
//                         ),
//                       ),

//                       const SizedBox(height: 16),

//                       // Étoiles
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                           5,
//                           (index) => const Icon(
//                             Icons.star,
//                             color: Color(0xFFFBBF24),
//                             size: 24,
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 16),

//                       // Témoignage
//                       const Text(
//                         'This app is so cool! It really made my kids start engaging more!',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Color(0xFF6B7280),
//                           height: 1.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 4),

//                 // ===== Bouton Continuer =====
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Navigation vers la page suivante
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 12,
//                         horizontal: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
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
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class TestimonialPage extends StatelessWidget {
//   const TestimonialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/Walkthrough4.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 32.0,
//               right: 32.0,
//               top: 48,
//               bottom: 54,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(flex: 1),

//                 // ===== Grande statistique =====
//                 const Text(
//                   '93%',
//                   style: TextStyle(
//                     fontSize: 64,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 // ===== Texte descriptif =====
//                 const Text(
//                   'des parents sont satisfaits des progrès\nde leurs enfants après seulement 2\nsemaines',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // ===== Cartes de témoignages scrollables =====
//                 SizedBox(
//                   height: 220,
//                   child: PageView(
//                     controller: PageController(viewportFraction: 0.9),
//                     children: [
//                       _buildTestimonialCard(
//                         avatar: 'assets/images/Avatar.svg',
//                         text:
//                             'This app is so cool! It really made my kids start engaging more!',
//                       ),
//                       _buildTestimonialCard(
//                         avatar: 'assets/images/Avatar2.svg',
//                         text:
//                             'My daughter loves learning with this app. Her grades improved significantly!',
//                       ),
//                       _buildTestimonialCard(
//                         avatar: 'assets/images/Avatar3.svg',
//                         text:
//                             'Amazing results! My son is now more confident in his studies.',
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 4),

//                 // ===== Bouton Continuer =====
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Navigation vers la page suivante
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 12,
//                         horizontal: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
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
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTestimonialCard({required String avatar, required String text}) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 16.0),
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.08),
//               blurRadius: 20,
//               offset: const Offset(0, 10),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Avatar
//             ClipOval(
//               child: Image.asset(
//                 avatar,
//                 width: 40,
//                 height: 40,
//                 fit: BoxFit.cover,
//               ),
//             ),

//             const SizedBox(height: 12),

//             // Étoiles
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 5,
//                 (index) =>
//                     const Icon(Icons.star, color: Color(0xFFFBBF24), size: 20),
//               ),
//             ),

//             const SizedBox(height: 12),

//             // Témoignage
//             Text(
//               text,
//               textAlign: TextAlign.center,
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                 fontSize: 14,
//                 color: Color(0xFF6B7280),
//                 height: 1.5,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class TestimonialPage extends StatelessWidget {
//   const TestimonialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/Walkthrough4.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== Section texte avec padding =====
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 32.0,
//                   right: 32.0,
//                   top: 48,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // ===== Grande statistique =====
//                     const Text(
//                       '93%',
//                       style: TextStyle(
//                         fontSize: 64,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),

//                     // ===== Texte descriptif =====
//                     const Text(
//                       'des parents sont satisfaits des progrès\nde leurs enfants après seulement 2\nsemaines',
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const Spacer(flex: 2),

//               // ===== Cartes de témoignages scrollables (sans padding) =====
//               SizedBox(
//                 height: 220,
//                 child: PageView.builder(
//                   controller: PageController(viewportFraction: 0.85),
//                   itemCount: 3,
//                   itemBuilder: (context, index) {
//                     final testimonials = [
//                       {
//                         'avatar': 'assets/images/Avatar.svg',
//                         'text':
//                             'This app is so cool! It really made my kids start engaging more!',
//                       },
//                       {
//                         'avatar': 'assets/images/Avatar.svg',
//                         'text':
//                             'My daughter loves learning with this app. Her grades improved significantly!',
//                       },
//                       {
//                         'avatar': 'assets/images/Avatar3.svg',
//                         'text':
//                             'Amazing results! My son is now more confident in his studies.',
//                       },
//                     ];

//                     return _buildTestimonialCard(
//                       avatar: testimonials[index]['avatar']!,
//                       text: testimonials[index]['text']!,
//                       isFirst: index == 0,
//                     );
//                   },
//                 ),
//               ),

//               const Spacer(flex: 4),

//               // ===== Bouton Continuer avec padding =====
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 32.0,
//                   right: 32.0,
//                   bottom: 54,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Navigation vers la page suivante
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 12,
//                         horizontal: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTestimonialCard({
//     required String avatar,
//     required String text,
//     required bool isFirst,
//   }) {
//     return Padding(
//       padding: EdgeInsets.only(left: isFirst ? 32.0 : 8.0, right: 8.0),
//       child: Material(
//         elevation: 16,
//         borderRadius: BorderRadius.circular(20),
//         shadowColor: Colors.black.withOpacity(0.4),
//         child: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Avatar
//               ClipOval(
//                 child: SvgPicture.asset(
//                   avatar,
//                   width: 40,
//                   height: 40,
//                   fit: BoxFit.cover,
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Étoiles
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                   5,
//                   (index) => const Icon(
//                     Icons.star,
//                     color: Color(0xFFFBBF24),
//                     size: 20,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Témoignage
//               Text(
//                 text,
//                 textAlign: TextAlign.center,
//                 maxLines: 3,
//                 overflow: TextOverflow.ellipsis,
//                 style: const TextStyle(
//                   fontSize: 14,
//                   color: Color(0xFF6B7280),
//                   height: 1.5,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class TestimonialPage extends StatelessWidget {
//   const TestimonialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/Walkthrough4.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== Section texte avec padding =====
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 32.0,
//                   right: 32.0,
//                   top: 48,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // ===== Grande statistique =====
//                     const Text(
//                       '93%',
//                       style: TextStyle(
//                         fontSize: 64,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),

//                     // ===== Texte descriptif =====
//                     const Text(
//                       'des parents sont satisfaits des progrès\nde leurs enfants après seulement 2\nsemaines',
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const Spacer(flex: 2),

//               // ===== Cartes de témoignages scrollables (sans padding) =====
//               SizedBox(
//                 height: 220,
//                 child: PageView.builder(
//                   controller: PageController(viewportFraction: 0.85),
//                   itemCount: 3,
//                   itemBuilder: (context, index) {
//                     final testimonials = [
//                       {
//                         'avatar': 'assets/images/Avatar.svg',
//                         'text':
//                             'This app is so cool! It really made my kids start engaging more!',
//                         'background': 'assets/images/card_bg_1.png',
//                       },
//                       {
//                         'avatar': 'assets/images/Shape.svg',
//                         'text':
//                             'My daughter loves learning with this app. Her grades improved significantly!',
//                         'background': 'assets/images/card_bg_2.png',
//                       },
//                       {
//                         'avatar': 'assets/images/Avatar3.svg',
//                         'text':
//                             'Amazing results! My son is now more confident in his studies.',
//                         'background': 'assets/images/card_bg_3.png',
//                       },
//                     ];

//                     return _buildTestimonialCard(
//                       avatar: testimonials[index]['avatar']!,
//                       text: testimonials[index]['text']!,
//                       background: testimonials[index]['background']!,
//                       isFirst: index == 0,
//                     );
//                   },
//                 ),
//               ),

//               const Spacer(flex: 4),

//               // ===== Bouton Continuer avec padding =====
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 32.0,
//                   right: 32.0,
//                   bottom: 54,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Navigation vers la page suivante
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 12,
//                         horizontal: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTestimonialCard({
//     required String avatar,
//     required String text,
//     required String background,
//     required bool isFirst,
//   }) {
//     return Padding(
//       padding: EdgeInsets.only(left: isFirst ? 32.0 : 8.0, right: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             // Ombre principale en bas
//             BoxShadow(
//               color: Colors.black.withOpacity(0.25),
//               blurRadius: 20,
//               spreadRadius: 0,
//               offset: const Offset(0, 10),
//             ),
//             // Ombre légère tout autour
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 15,
//               spreadRadius: 2,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             image: DecorationImage(
//               image: AssetImage(background),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Container(
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               // Overlay semi-transparent pour améliorer la lisibilité
//               color: Colors.white.withOpacity(0.9),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Avatar
//                 ClipOval(
//                   child: SvgPicture.asset(
//                     avatar,
//                     width: 40,
//                     height: 40,
//                     fit: BoxFit.cover,
//                     placeholderBuilder: (context) => Container(
//                       width: 40,
//                       height: 40,
//                       color: const Color(0xFFE5E7EB),
//                       child: const Icon(
//                         Icons.person,
//                         color: Color(0xFF9CA3AF),
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 12),

//                 // Étoiles
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(
//                     5,
//                     (index) => const Icon(
//                       Icons.star,
//                       color: Color(0xFFFBBF24),
//                       size: 20,
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 12),

//                 // Témoignage
//                 Text(
//                   text,
//                   textAlign: TextAlign.center,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Color(0xFF6B7280),
//                     height: 1.5,
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

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class OnboardingPage extends StatelessWidget {
//   const OnboardingPage({super.key});

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
//             image: AssetImage('assets/images/background/backgroundYellow.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // === Question ===
//                 SizedBox(height: 32.h),
//                 Text(
//                   'Rencontrez vous des difficultés pour faire les devoirs avec votre enfant?',
//                   style: TextStyle(
//                     fontSize: 28.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 Spacer(),

//                 // === Image étoile au centre ===
//                 Center(
//                   child: SvgPicture.asset(
//                     'assets/images/logos/Group_8.svg',
//                     width: 292.16.w,
//                     height: 292.16.h,
//                     fit: BoxFit.contain,
//                   ),
//                 ),

//                 Spacer(),

//                 // === Boutons "Non" et "Oui!" ===
//                 Row(
//                   children: [
//                     // Bouton "Non"
//                     Expanded(
//                       child: SizedBox(
//                         height: 56.h,
//                         child: OutlinedButton(
//                           onPressed: () {
//                             // Action Non
//                           },
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.transparent,
//                             side: BorderSide(color: Colors.black, width: 2.w),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                           ),
//                           child: Text(
//                             'Non',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(width: 16.w),

//                     // Bouton "Oui!"
//                     Expanded(
//                       child: SizedBox(
//                         height: 56.h,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Action Oui
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Oui!',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class OnboardingTestimonialPage extends StatefulWidget {
//   const OnboardingTestimonialPage({super.key});

//   @override
//   State<OnboardingTestimonialPage> createState() =>
//       _OnboardingTestimonialPageState();
// }

// class _OnboardingTestimonialPageState extends State<OnboardingTestimonialPage> {
//   final PageController _pageController = PageController(viewportFraction: 0.85);
//   int _currentPage = 0;

//   // final List<TestimonialData> _testimonials = [
//   //   TestimonialData(
//   //     avatar: 'assets/images/testimonial_avatar1.png',
//   //     text: 'This app is so cool! It really made my kids start engaging more!',
//   //   ),
//   //   TestimonialData(
//   //     avatar: 'assets/images/testimonial_avatar2.png',
//   //     text:
//   //         'Amazing results! My child\'s grades improved significantly in just 2 weeks!',
//   //   ),
//   //   TestimonialData(
//   //     avatar: 'assets/images/testimonial_avatar3.png',
//   //     text: 'Boetia made homework time fun and educational. Highly recommend!',
//   //   ),
//   // ];

//   final List<TestimonialData> _testimonials = [
//     TestimonialData(
//       // avatar: 'https://i.pravatar.cc/150?img=1', // Avatar 1
//       avatar: 'https://i.pravatar.cc/150?img=47',
//       text: 'This app is so cool! It really made my kids start engaging more!',
//     ),
//     TestimonialData(
//       // avatar: 'https://i.pravatar.cc/150?img=5', // Avatar 2
//       avatar: 'https://i.pravatar.cc/150?img=12',
//       text:
//           'Amazing results! My child\'s grades improved significantly in just 2 weeks!',
//     ),
//     TestimonialData(
//       // avatar: 'https://i.pravatar.cc/150?img=9', // Avatar 3
//       avatar: 'https://i.pravatar.cc/150?img=32',
//       text: 'Boetia made homework time fun and educational. Highly recommend!',
//     ),
//   ];

//   @override
//   void dispose() {
//     _pageController.dispose();
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
//             image: AssetImage('assets/images/background/backgroundGreen.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // === Section avec padding (texte en haut) ===
//               Padding(
//                 padding: EdgeInsets.fromLTRB(32.w, 80.h, 32.w, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // === Pourcentage "93%" ===
//                     Text(
//                       '93%',
//                       style: TextStyle(
//                         fontSize: 64.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),

//                     // SizedBox(height: 16.h),

//                     // === Description ===
//                     Text(
//                       'des parents sont satisfaits des progrès de leurs enfants après seulement 2 semaines',
//                       style: TextStyle(
//                         fontSize: 28.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               Spacer(flex: 1),

//               // === PageView avec 3 cards (SANS padding) ===
//               SizedBox(
//                 height: 200.h,
//                 child: PageView.builder(
//                   controller: _pageController,
//                   onPageChanged: (index) {
//                     setState(() {
//                       _currentPage = index;
//                     });
//                   },
//                   itemCount: _testimonials.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.w),
//                       child: _buildTestimonialCard(_testimonials[index]),
//                     );
//                   },
//                 ),
//               ),

//               Spacer(flex: 2),

//               // === Section avec padding (bouton en bas) ===
//               Padding(
//                 padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                 child: SizedBox(
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
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTestimonialCard(TestimonialData testimonial) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.symmetric(horizontal: 0, vertical: 24),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24.r),
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: Colors.black.withOpacity(0.1), // Opacité 10%
//         //     blurRadius: 20, // Flou de 20
//         //     offset: Offset(0, 6), // Décalage vers le bas
//         //     spreadRadius: 0, // Pas d'expansion
//         //   ),
//         // ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Avatar
//           CircleAvatar(
//             radius: 32.r,
//             // backgroundImage: AssetImage(testimonial.avatar),
//             backgroundImage: NetworkImage(testimonial.avatar),
//           ),

//           SizedBox(height: 16.h),

//           // Étoiles
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               5,
//               (index) =>
//                   Icon(Icons.star, color: Color(0xFFFACC15), size: 20.sp),
//             ),
//           ),

//           SizedBox(height: 8.h),

//           // Texte du témoignage
//           Text(
//             testimonial.text,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 14.sp, color: Colors.black, height: 1.2),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Classe pour stocker les données des témoignages
// class TestimonialData {
//   final String avatar;
//   final String text;

//   TestimonialData({required this.avatar, required this.text});
// }

// ---------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class OnboardingProgressPage extends StatelessWidget {
//   final String childName;
//   final int progressPercentage;

//   const OnboardingProgressPage({
//     super.key,
//     this.childName = 'Guillaume',
//     this.progressPercentage = 70,
//   });

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
//             image: AssetImage('assets/images/background/backgroundBlue.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // === Texte en haut ===
//                 Padding(
//                   padding: const EdgeInsets.only(top: 32.0),
//                   child: RichText(
//                     text: TextSpan(
//                       style: TextStyle(
//                         fontSize: 28.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: 'On prépare l\'espace\nsur mesure de\n',
//                           style: TextStyle(fontWeight: FontWeight.normal),
//                         ),
//                         TextSpan(
//                           text: '$childName!',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 32.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 Spacer(),

//                 // === Image SVG de progression circulaire ===
//                 Center(
//                   child: SvgPicture.asset(
//                     'assets/images/progress_circle_$progressPercentage.svg',
//                     width: 280.w,
//                     height: 280.h,
//                     fit: BoxFit.contain,
//                   ),
//                 ),

//                 Spacer(),

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


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:math' as math;

// import 'package:flutter_svg/svg.dart';

// class OnboardingProgressPageCustom extends StatefulWidget {
//   final String parentName;
//   final double progressPercentage;

//   const OnboardingProgressPageCustom({
//     super.key,
//     this.parentName = 'Guillaume',
//     this.progressPercentage = 70,
//   });

//   @override
//   State<OnboardingProgressPageCustom> createState() =>
//       _OnboardingProgressPageCustomState();
// }

// class _OnboardingProgressPageCustomState
//     extends State<OnboardingProgressPageCustom>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _progressAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Créer l'AnimationController pour 2 secondes
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );

//     // Créer l'animation de 0 à progressPercentage
//     _progressAnimation = Tween<double>(
//       begin: 0.0,
//       end: widget.progressPercentage,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

//     // Démarrer l'animation
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
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
//             image: AssetImage('assets/images/background/backgroundBlue.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // === Texte en haut ===
//                 Padding(
//                   padding: const EdgeInsets.only(top: 32.0),
//                   child: RichText(
//                     text: TextSpan(
//                       style: TextStyle(
//                         fontSize: 28.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: 'On prépare l\'espace\nsur mesure de\n',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         TextSpan(
//                           text: '${widget.parentName}!',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 40.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 Spacer(),

//                 // === Cercle de progression personnalisé ===
//                 Center(
//                   child: AnimatedBuilder(
//                     animation: _progressAnimation,
//                     builder: (context, child) {
//                       return SizedBox(
//                         width: 239.w,
//                         height: 239.h,
//                         child: Stack(
//                           alignment: Alignment.center,
//                           children: [
//                             // Cercle de progression
//                             CustomPaint(
//                               size: Size(239.w, 239.h),
//                               painter: CircularProgressPainter(
//                                 progress: _progressAnimation.value / 100,
//                               ),
//                             ),

//                             // Texte de pourcentage au centre
//                             Text(
//                               '${_progressAnimation.value.toInt()}%',
//                               style: TextStyle(
//                                 fontSize: 64.sp,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                                 height: 1.2,
//                               ),
//                             ),

//                             // Étoile en haut à droite
//                             // Positioned(
//                             //   top: 0.h,
//                             //   right: 0.w,
//                             //   child: Icon(
//                             //     Icons.star,
//                             //     color: Color(0xFFFACC15),
//                             //     size: 77.03.sp,
//                             //   ),
//                             // ),
//                             Positioned(
//                               top: 0.h,
//                               right: 0.w,
//                               child: SvgPicture.asset(
//                                 'assets/images/logos/Group.svg',
//                                 width: 94.w,
//                                 height: 94.h,
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),

//                 Spacer(),

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

// // Painter pour dessiner le cercle de progression
// class CircularProgressPainter extends CustomPainter {
//   final double progress;

//   CircularProgressPainter({required this.progress});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = size.width / 2 - 20;
//     final strokeWidth = 30.0;

//     // Cercle de fond (gris clair/blanc)
//     final backgroundPaint = Paint()
//       ..color = Colors.white
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     canvas.drawCircle(center, radius, backgroundPaint);

//     // Cercle de progression (bleu)
//     final progressPaint = Paint()
//       ..color = Colors
//           .blue // Bleu
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     final sweepAngle = 2 * math.pi * progress;
//     canvas.drawArc(
//       Rect.fromCircle(center: center, radius: radius),
//       -math.pi / 2, // Commence en haut
//       sweepAngle,
//       false,
//       progressPaint,
//     );
//   }

//   @override
//   bool shouldRepaint(CircularProgressPainter oldDelegate) {
//     return oldDelegate.progress != progress;
//   }
// }
