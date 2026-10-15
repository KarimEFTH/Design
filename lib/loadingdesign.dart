// import 'dart:math';

// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatefulWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   State<AnalyzingWordsPage> createState() => _AnalyzingWordsPageState();
// }

// class _AnalyzingWordsPageState extends State<AnalyzingWordsPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<int> _dotAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..repeat();

//     _dotAnimation = IntTween(begin: 0, end: 3).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   String get _animatedDots {
//     int dotCount = _dotAnimation.value;
//     return '.' * dotCount;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // === Fond
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),

//           // === Contenu principal
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Spacer(flex: 2),

//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 80),

//                   // === Texte fixe + points animés horizontaux
//                   Center(
//                     child: AnimatedBuilder(
//                       animation: _controller,
//                       builder: (context, child) {
//                         // translation verticale selon une fonction sin pour effet serpent
//                         double offsetY = 8 * sin(_controller.value * 2 * pi);
//                         return Transform.translate(
//                           offset: Offset(0, offsetY),
//                           child: child, // le texte + points fixe
//                         );
//                       },
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: const [
//                           Text(
//                             'Analysing words',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           Text(
//                             '...',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   // === Description
//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   // === Bouton
//                   SizedBox(
//                     width: double.infinity,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 18),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:math';

// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatefulWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   State<AnalyzingWordsPage> createState() => _AnalyzingWordsPageState();
// }

// class _AnalyzingWordsPageState extends State<AnalyzingWordsPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<int> _dotAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..repeat();

//     _dotAnimation = IntTween(begin: 0, end: 3).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   String get _animatedDots {
//     int dotCount = _dotAnimation.value;
//     return '.' * dotCount;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // === Fond
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),

//           // === Contenu principal
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Spacer(flex: 2),

//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 80),

//                   // === Texte fixe + points animés horizontaux
//                   Center(
//                     child: AnimatedBuilder(
//                       animation: _controller,
//                       builder: (context, child) {
//                         // translation verticale selon une fonction sin pour effet serpent
//                         double offsetY = 8 * sin(_controller.value * 2 * pi);
//                         return Transform.translate(
//                           offset: Offset(0, offsetY),
//                           child: child, // le texte + points fixe
//                         );
//                       },
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: const [
//                           Text(
//                             'Analysing words',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           Text(
//                             '...',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   // === Description
//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   // === Bouton
//                   SizedBox(
//                     width: double.infinity,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 18),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:math';
// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatefulWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   State<AnalyzingWordsPage> createState() => _AnalyzingWordsPageState();
// }

// class _AnalyzingWordsPageState extends State<AnalyzingWordsPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   final String _text = 'Analysing words...';

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 4),
//     )..repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   double _getOffset(double t, int index, int total) {
//     // Chaque caractère oscille à son tour, les autres restent fixes
//     double interval = 1.0 / total;
//     double start = index * interval;
//     double end = start + interval;

//     if (t >= start && t < end) {
//       double localT = (t - start) / interval; // 0..1
//       return 8 * cos(localT * pi); // amplitude 8 pixels
//     }
//     return 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // === Fond image plein écran
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),

//           // === Contenu principal
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Spacer(flex: 2),

//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 80),

//                   // === Texte avec un caractère oscillant à la fois
//                   Center(
//                     child: AnimatedBuilder(
//                       animation: _controller,
//                       builder: (context, child) {
//                         double t = _controller.value; // 0..1
//                         return Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: List.generate(_text.length, (index) {
//                             return Transform.translate(
//                               offset: Offset(
//                                 0,
//                                 _getOffset(t, index, _text.length),
//                               ),
//                               child: Text(
//                                 _text[index],
//                                 style: const TextStyle(
//                                   fontSize: 32,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             );
//                           }),
//                         );
//                       },
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   // === Description
//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   // === Bouton "Annuler le dictation"
//                   SizedBox(
//                     width: double.infinity,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 18),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatefulWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   State<AnalyzingWordsPage> createState() => _AnalyzingWordsPageState();
// }

// class _AnalyzingWordsPageState extends State<AnalyzingWordsPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<int> _dotAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..repeat();

//     _dotAnimation = IntTween(begin: 0, end: 3).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   String get _animatedDots {
//     int dotCount = _dotAnimation.value;
//     return '.' * dotCount;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // === Fond
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),

//           // === Contenu principal
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Spacer(flex: 2),

//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 80),

//                   // === Texte fixe + points animés horizontaux
//                   Center(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           'Analysing words',
//                           style: TextStyle(
//                             fontSize: 32,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         AnimatedBuilder(
//                           animation: _controller,
//                           builder: (context, child) {
//                             return Text(
//                               _animatedDots.padRight(
//                                 3,
//                               ), // Toujours 3 caractères
//                               style: const TextStyle(
//                                 fontSize: 32, // points plus grands
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                                 fontFamily: 'Courier', // police monospaced
//                                 letterSpacing: -7, // rapprochement des points
//                               ),
//                             );
//                           },
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   // === Description
//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   // === Bouton
//                   SizedBox(
//                     width: double.infinity,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 18),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatefulWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   State<AnalyzingWordsPage> createState() => _AnalyzingWordsPageState();
// }

// class _AnalyzingWordsPageState extends State<AnalyzingWordsPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<int> _dotAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..repeat();

//     _dotAnimation = IntTween(begin: 0, end: 3).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   String get _animatedDots {
//     int dotCount = _dotAnimation.value;
//     return '.' * dotCount; // ".", "..", "..."
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // === Image de fond plein écran
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),

//           // === Contenu principal
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Spacer(flex: 2),

//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 80),

//                   // === Texte fixe + points animés séparés
//                   Center(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Text(
//                           'Analysing words',
//                           style: TextStyle(
//                             fontSize: 32,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         AnimatedBuilder(
//                           animation: _controller,
//                           builder: (context, child) {
//                             return Text(
//                               _animatedDots,
//                               style: const TextStyle(
//                                 fontSize: 32,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             );
//                           },
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   // === Description
//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   // === Bouton "Annuler le dictation"
//                   SizedBox(
//                     width: double.infinity,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 18),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatelessWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // === Image de fond plein écran
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),

//           // === Contenu principal
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Spacer(flex: 2),

//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 80),

//                   // === Texte fixe + points fixes
//                   const Center(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Analysing words',
//                           style: TextStyle(
//                             fontSize: 32,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Text(
//                           '...', // points fixes
//                           style: TextStyle(
//                             fontSize: 32,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   // === Description
//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   // === Bouton "Annuler le dictation"
//                   SizedBox(
//                     width: double.infinity,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 18),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// -------------------------------------------------------- DICTATION LOADER -------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class AnalyzingWordsPage extends StatelessWidget {
//   const AnalyzingWordsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/loading/Loader.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           SafeArea(
//             child: SizedBox(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   // === Logo aligné à droite
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       'assets/images/loading/logo.png',
//                       fit: BoxFit.none,
//                     ),
//                   ),

//                   const SizedBox(height: 24),

//                   const Text(
//                     'Analysing words...',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const SizedBox(height: 12),

//                   const Text(
//                     'Boetia is analysing the uploaded information',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),

//                   const SizedBox(height: 213),

//                   SizedBox(
//                     width: 311,
//                     height: 44,
//                     child: OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 12,
//                           horizontal: 12,
//                         ),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         'Annuler le dictation',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),

//                   // const SizedBox(height: 54),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// -------------------------------------------------------- Reward Parfait-------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class DictationPointsEarnedPage extends StatelessWidget {
//   const DictationPointsEarnedPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFACC15),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(
//             right: 32.0,
//             left: 32.0,
//             bottom: 54.0,
//             top: 48.0,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Spacer(flex: 1),
//               // Étoile orange avec visage (image)
//               Center(
//                 child: Image.asset(
//                   'assets/images/loading/reward-star.png',
//                   fit: BoxFit.none,
//                 ),
//               ),
//               SizedBox(height: 12),
//               // Titre
//               Text(
//                 'You\'ve earned\n2 points!',
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   height: 1.2,
//                 ),
//               ),
//               SizedBox(height: 16),
//               // Description
//               Text(
//                 'You completed your dictation\ntoday.\nGreat work!',
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.black,
//                   height: 1.2,
//                 ),
//               ),
//               SizedBox(height: 55),
//               // Bouton "Collect points"
//               SizedBox(
//                 width: 311,
//                 height: 48,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Action collecter points
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(255, 0, 0, 0),
//                     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class RewardScreen extends StatefulWidget {
//   final int points;
//   final String message;
//   final String subtitle;

//   const RewardScreen({
//     Key? key,
//     this.points = 2,
//     this.message = 'You completed your homework\ntoday.',
//     this.subtitle = 'Great work!',
//   }) : super(key: key);

//   @override
//   State<RewardScreen> createState() => _RewardScreenState();
// }

// class _RewardScreenState extends State<RewardScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _bounceController;
//   late AnimationController _rotateController;
//   late AnimationController _scaleController;

//   late Animation<double> _bounceAnimation;
//   late Animation<double> _rotateAnimation;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de rebond pour l'étoile
//     _bounceController = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     );

//     _bounceAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _bounceController, curve: Curves.bounceOut),
//     );

//     // Animation de rotation légère
//     _rotateController = AnimationController(
//       duration: const Duration(milliseconds: 2000),
//       vsync: this,
//     )..repeat(reverse: true);

//     _rotateAnimation = Tween<double>(begin: -0.05, end: 0.05).animate(
//       CurvedAnimation(parent: _rotateController, curve: Curves.easeInOut),
//     );

//     // Animation de scale pulsation
//     _scaleController = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
//       CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
//     );

//     // Démarrer l'animation de rebond
//     _bounceController.forward();
//   }

//   @override
//   void dispose() {
//     _bounceController.dispose();
//     _rotateController.dispose();
//     _scaleController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final screenHeight = MediaQuery.of(context).size.height;
//     // final screenWidth = MediaQuery.of(context).size.width;
//     // final safeAreaTop = MediaQuery.of(context).padding.top;
//     // final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       backgroundColor: Color(0xFFF4C430), // Jaune doré
//       // backgroundColor: Color(0xFFF9CF47), // Jaune
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Spacer pour centrer le contenu verticalement
//               Spacer(flex: 2),

//               // Étoile animée avec rebond, rotation et pulsation
//               Center(
//                 child: AnimatedBuilder(
//                   animation: Listenable.merge([
//                     _bounceAnimation,
//                     _rotateAnimation,
//                     _scaleAnimation,
//                   ]),
//                   builder: (context, child) {
//                     return Transform.translate(
//                       offset: Offset(0, -50 * (1 - _bounceAnimation.value)),
//                       child: Transform.rotate(
//                         angle: _rotateAnimation.value,
//                         child: Transform.scale(
//                           scale: _scaleAnimation.value,
//                           child: Image.asset(
//                             'assets/images/loading/reward-star.png',
//                             width: 206.6.w,
//                             height: 206.6.w,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               SizedBox(height: 12.h),

//               // Titre "You've earned X points!"
//               RichText(
//                 textAlign: TextAlign.start,
//                 text: TextSpan(
//                   style: TextStyle(
//                     fontSize: 28.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     // letterSpacing: -0.5,
//                     height: 1.2,
//                   ),
//                   children: [
//                     TextSpan(text: "You've earned\n"),
//                     TextSpan(text: "${widget.points} points!"),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 16.h),

//               // Message et sous-titre
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.message,
//                     // textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 20.sp,
//                       color: Colors.black,
//                       height: 1.2,
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     widget.subtitle,
//                     // textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 20.sp,
//                       color: Colors.black,
//                       height: 1.2,
//                     ),
//                   ),
//                 ],
//               ),

//               // Spacer pour pousser le bouton vers le bas
//               Spacer(flex: 1),

//               // Bouton "Collect points"
//               Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   onTap: () {
//                     // Action pour collecter les points
//                     // Navigator.pop(context);
//                   },
//                   borderRadius: BorderRadius.circular(30.r),
//                   child: Container(
//                     width: double.infinity,
//                     height: 56.h,
//                     decoration: BoxDecoration(
//                       color: Colors.black, // Noir/gris très foncé
//                       borderRadius: BorderRadius.circular(30.r),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Collect points',
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
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

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// // import 'package:go_router/go_router.dart';

// class RewardScreen extends StatefulWidget {
//   final int points;
//   final String message;

//   const RewardScreen({
//     Key? key,
//     this.points = 2,
//     this.message = 'You completed your homework\ntoday.',
//   }) : super(key: key);

//   @override
//   State<RewardScreen> createState() => _RewardScreenState();
// }

// class _RewardScreenState extends State<RewardScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _bounceController;
//   late AnimationController _rotateController;
//   late AnimationController _scaleController;

//   late Animation<double> _bounceAnimation;
//   late Animation<double> _rotateAnimation;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de rebond pour l'étoile
//     _bounceController = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     );

//     _bounceAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _bounceController, curve: Curves.bounceOut),
//     );

//     // Animation de rotation légère
//     _rotateController = AnimationController(
//       duration: const Duration(milliseconds: 2000),
//       vsync: this,
//     )..repeat(reverse: true);

//     _rotateAnimation = Tween<double>(begin: -0.05, end: 0.05).animate(
//       CurvedAnimation(parent: _rotateController, curve: Curves.easeInOut),
//     );

//     // Animation de scale pulsation
//     _scaleController = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
//       CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
//     );

//     // Démarrer l'animation de rebond
//     _bounceController.forward();
//   }

//   @override
//   void dispose() {
//     _bounceController.dispose();
//     _rotateController.dispose();
//     _scaleController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF4C430), // ✅ Jaune doré au lieu de l'image
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Spacer(),

//               // Étoile animée avec rebond, rotation et pulsation
//               Center(
//                 child: AnimatedBuilder(
//                   animation: Listenable.merge([
//                     _bounceAnimation,
//                     _rotateAnimation,
//                     _scaleAnimation,
//                   ]),
//                   builder: (context, child) {
//                     return Transform.translate(
//                       offset: Offset(0, -50 * (1 - _bounceAnimation.value)),
//                       child: Transform.rotate(
//                         angle: _rotateAnimation.value,
//                         child: Transform.scale(
//                           scale: _scaleAnimation.value,
//                           child: SvgPicture.asset(
//                             'assets/images/reward_star.svg',
//                             width: 200.w,
//                             height: 200.h,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               SizedBox(height: 55.h),

//               RichText(
//                 textAlign: TextAlign.start,
//                 text: TextSpan(
//                   style: TextStyle(
//                     fontSize: 28.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                   children: [
//                     TextSpan(text: "You've earned\n"),
//                     TextSpan(text: "${widget.points} points!"),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 16.h),

//               RichText(
//                 textAlign: TextAlign.start,
//                 text: TextSpan(
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                   children: [
//                     TextSpan(text: "${widget.message}\n"),
//                     TextSpan(text: "Great work!"),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 55.h),

//               // Bouton "Collect points"
//               SizedBox(
//                 width: double.infinity,
//                 height: 56.h,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // ✅ Redirection vers /home
//                     // context.go('/home');
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: Text(
//                     'Collect points',
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
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

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class RewardScreen extends StatefulWidget {
//   final int points;
//   final String message;
//   final String subtitle;

//   const RewardScreen({
//     Key? key,
//     this.points = 2,
//     this.message = 'You completed your homework\ntoday.',
//     this.subtitle = 'Great work!',
//   }) : super(key: key);

//   @override
//   State<RewardScreen> createState() => _RewardScreenState();
// }

// class _RewardScreenState extends State<RewardScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _bounceController;
//   late AnimationController _rotateController;
//   late AnimationController _scaleController;

//   late Animation<double> _bounceAnimation;
//   late Animation<double> _rotateAnimation;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de rebond pour l'étoile
//     _bounceController = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     );

//     _bounceAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _bounceController, curve: Curves.bounceOut),
//     );

//     // Animation de rotation légère
//     _rotateController = AnimationController(
//       duration: const Duration(milliseconds: 2000),
//       vsync: this,
//     )..repeat(reverse: true);

//     _rotateAnimation = Tween<double>(begin: -0.05, end: 0.05).animate(
//       CurvedAnimation(parent: _rotateController, curve: Curves.easeInOut),
//     );

//     // Animation de scale pulsation
//     _scaleController = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
//       CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
//     );

//     // Démarrer l'animation de rebond
//     _bounceController.forward();
//   }

//   @override
//   void dispose() {
//     _bounceController.dispose();
//     _rotateController.dispose();
//     _scaleController.dispose();
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
//             image: AssetImage('assets/images/yellow_background.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Spacer(),

//                 // Étoile animée avec rebond, rotation et pulsation
//                 Center(
//                   child: AnimatedBuilder(
//                     animation: Listenable.merge([
//                       _bounceAnimation,
//                       _rotateAnimation,
//                       _scaleAnimation,
//                     ]),
//                     builder: (context, child) {
//                       return Transform.translate(
//                         offset: Offset(0, -50 * (1 - _bounceAnimation.value)),
//                         child: Transform.rotate(
//                           angle: _rotateAnimation.value,
//                           child: Transform.scale(
//                             scale: _scaleAnimation.value,
//                             // child: Image.asset(
//                             //   'assets/images/reward_star.png',
//                             //   width: 200.w,
//                             //   height: 200.h,
//                             //   fit: BoxFit.contain,
//                             // ),
//                             child: SvgPicture.asset(
//                               'assets/images/reward_star.svg',
//                               width: 200.w,
//                               height: 200.h,
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),

//                 SizedBox(height: 55.h),

//                 RichText(
//                   textAlign: TextAlign.start,
//                   text: TextSpan(
//                     style: TextStyle(
//                       fontSize: 28.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       height: 1.2,
//                     ),
//                     children: [
//                       TextSpan(text: "You've earned\n"),
//                       TextSpan(text: "${widget.points} points!"),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 16.h),

//                 // Message et sous-titre
//                 // Text(
//                 //   'You completed your homework today.\nGreat work!',
//                 //   style: TextStyle(
//                 //     fontSize: 20.sp,
//                 //     color: Colors.black,
//                 //     height: 1.2,
//                 //   ),
//                 // ),
//                 RichText(
//                   textAlign: TextAlign.start,
//                   text: TextSpan(
//                     style: TextStyle(
//                       fontSize: 20.sp,
//                       color: Colors.black,
//                       height: 1.2,
//                     ),
//                     children: [
//                       TextSpan(text: "${widget.message}\n"),
//                       TextSpan(text: "Great work!"),
//                     ],
//                   ),
//                 ),

//                 // Spacer(),
//                 SizedBox(height: 55.h),

//                 // Bouton "Collect points"
//                 SizedBox(
//                   width: double.infinity,
//                   height: 56.h,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Action pour collecter les points
//                       // Navigator.pop(context);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Collect points',
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

// -------------------------------------------------------- HOMEWORK LOADER -------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class AnalyzingHomeworkLoadingPage extends StatelessWidget {
//   const AnalyzingHomeworkLoadingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'assets/images/loading/LoaderYellow.png',
//             ), // Remplacez par votre image de fond
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
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Spacer(flex: 1),
//                 // Image des deux formes orange avec visages
//                 Image.asset(
//                   'assets/images/loading/logoHomework.png',
//                   fit: BoxFit.none,
//                 ),
//                 SizedBox(height: 24, width: double.infinity),
//                 // Titre
//                 Text(
//                   'Analysing\nhomework...',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 36,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.1,
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 // Description
//                 Text(
//                   'Boetia is analysing the uploaded information',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),
//                 SizedBox(height: 213),
//                 // Bouton "Annuler le lesson"
//                 SizedBox(
//                   width: 311,
//                   height: 44,
//                   child: OutlinedButton(
//                     onPressed: () {
//                       // Action annuler
//                     },
//                     style: OutlinedButton.styleFrom(
//                       padding: EdgeInsets.symmetric(vertical: 18),
//                       side: BorderSide(color: Colors.black, width: 2),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       backgroundColor: Colors.transparent,
//                     ),
//                     child: Text(
//                       'Annuler le lesson',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
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
