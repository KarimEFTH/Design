// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class QuizQuestionPage extends StatefulWidget {
//   const QuizQuestionPage({super.key});

//   @override
//   State<QuizQuestionPage> createState() => _QuizQuestionPageState();
// }

// class _QuizQuestionPageState extends State<QuizQuestionPage> {
//   String? selectedAnswer;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/backgroundBlanch.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== Barre supérieure avec icônes =====
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: SvgPicture.asset(
//                         'assets/icons/Chevron_left.svg',
//                         color: Colors.black, // facultatif, applique une couleur
//                         width: 24, // taille souhaitée
//                         height: 24,
//                       ),
//                       onPressed: () {
//                         // Navigator.pop(context);
//                       },
//                     ),
//                     IconButton(
//                       icon: SvgPicture.asset(
//                         'assets/icons/X.svg',
//                         color: Colors.black,
//                         width: 24,
//                         height: 24,
//                       ),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),

//               // ===== Ligne grise de séparation =====
//               Container(
//                 width: double.infinity,
//                 height: 1,
//                 color: Colors.grey.withOpacity(0.3),
//               ),

//               // ===== Contenu principal =====
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                     left: 32.0,
//                     right: 32.0,
//                     bottom: 54.0,
//                     top: 30.0,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // ===== Carte de question =====
//                       Container(
//                         width: double.infinity,
//                         padding: const EdgeInsets.only(
//                           left: 24,
//                           right: 24,
//                           top: 32,
//                           bottom: 24,
//                         ),
//                         decoration: BoxDecoration(
//                           gradient: const LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [Color(0xFFFCE7F3), Color(0xFFFBCFE8)],
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.15),
//                               blurRadius: 20,
//                               offset: const Offset(0, 10),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Barre de progression
//                             Container(
//                               width: double.infinity,
//                               height: 6,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromARGB(20, 120, 120, 120),
//                                 borderRadius: BorderRadius.circular(3),
//                               ),
//                               child: FractionallySizedBox(
//                                 alignment: Alignment.centerLeft,
//                                 widthFactor: 0.25,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Colors.pink,
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             const Text(
//                               'Question 1/4',
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 51, 51, 51),
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 16),
//                             const Text(
//                               'If you want to\nintroduce yourself,\nwhat do you say\nafter "my name\nis..."?',
//                               style: TextStyle(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                                 height: 1.3,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       const Spacer(),
//                       const Text(
//                         'Select your answer',
//                         style: TextStyle(fontSize: 16, color: Colors.black),
//                       ),
//                       const SizedBox(height: 8),

//                       _buildAnswerOption('Your name', 'name', true),
//                       const SizedBox(height: 8),
//                       _buildAnswerOption('Your age', 'age', false),
//                       const SizedBox(height: 8),
//                       _buildAnswerOption('Your city', 'city', null),
//                       const Spacer(),

//                       // ===== Bouton suivant =====
//                       SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 12,
//                               horizontal: 12,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: const Text(
//                             'Next question',
//                             style: TextStyle(
//                               fontSize: 18,
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

//   Widget _buildAnswerOption(String text, String value, bool? isCorrect) {
//     bool isSelected = selectedAnswer == value;

//     Color borderColor = Colors.black;
//     Color? backgroundColor = Colors.transparent;
//     Widget? trailingIcon;

//     if (isCorrect == true) {
//       borderColor = Colors.green;
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Colors.green,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.check, color: Colors.white, size: 16),
//       );
//     } else if (isCorrect == false) {
//       borderColor = const Color(0xFFC0110C);
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Color(0xFFEF4444),
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.close, color: Colors.white, size: 16),
//       );
//     }

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedAnswer = value;
//         });
//       },
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(color: borderColor, width: 2),
//         ),
//         child: (trailingIcon != null)
//             ? Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Spacer(),
//                   Text(
//                     text,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Spacer(),
//                   trailingIcon,
//                 ],
//               )
//             : Padding(
//                 padding: const EdgeInsets.only(right: 24.0),
//                 child: Text(
//                   text,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class QuizQuestionPage extends StatefulWidget {
//   const QuizQuestionPage({super.key});

//   @override
//   State<QuizQuestionPage> createState() => _QuizQuestionPageState();
// }

// class _QuizQuestionPageState extends State<QuizQuestionPage> {
//   final PageController _pageController = PageController();
//   int currentPage = 0;
//   String? selectedAnswer;

//   final List<Map<String, dynamic>> questions = [
//     {
//       'progress': 0.25,
//       'question1':
//           'If you want to\nintroduce yourself,\nwhat do you say\nafter "my name\nis..."?',
//       'answers': [
//         {'option1': 'Your name', 'isCorrect': true},
//         {'option2': 'Your age', 'isCorrect': false},
//         {'option3': 'Your city', 'isCorrect': null},
//       ],
//     },
//     {
//       'progress': 0.50,
//       'question2': 'What is the capital of France?',
//       'answers': [
//         {'option1': 'Your name', 'isCorrect': true},
//         {'option2': 'Your age', 'isCorrect': false},
//         {'option3': 'Your city', 'isCorrect': null},
//       ],
//     },
//     {
//       'progress': 0.75,
//       'question3': 'Which language is used in Flutter?',
//       'answers': [
//         {'option1': 'Your name', 'isCorrect': true},
//         {'option2': 'Your age', 'isCorrect': false},
//         {'option3': 'Your city', 'isCorrect': null},
//       ],
//     },
//     {
//       'progress': 1.0,
//       'question4': 'Which company developed Flutter?',
//       'answers': [
//         {'option1': 'Your name', 'isCorrect': true},
//         {'option2': 'Your age', 'isCorrect': false},
//         {'option3': 'Your city', 'isCorrect': null},
//       ],
//     },
//   ];

//   void _onNext() {
//     if (currentPage < questions.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text("Quiz terminé 🎉")));
//     }
//   }

//   void _onBack() {
//     if (currentPage > 0) {
//       _pageController.previousPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   void _onClose() {
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/backgroundBlanch.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== Barre supérieure avec icônes =====
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // 👇 Affiche la flèche de retour uniquement si on n’est pas sur la première page
//                     if (currentPage > 0)
//                       IconButton(
//                         icon: SvgPicture.asset(
//                           'assets/icons/Chevron_left.svg',
//                           color: Colors.black,
//                           width: 24,
//                           height: 24,
//                         ),
//                         onPressed: _onBack,
//                       )
//                     else
//                       const SizedBox(
//                         width: 48,
//                       ), // espace pour garder l’alignement
//                     IconButton(
//                       icon: SvgPicture.asset(
//                         'assets/icons/X.svg',
//                         color: Colors.black,
//                         width: 24,
//                         height: 24,
//                       ),
//                       onPressed: _onClose,
//                     ),
//                   ],
//                 ),
//               ),

//               // ===== Ligne grise de séparation =====
//               Container(
//                 width: double.infinity,
//                 height: 1,
//                 color: Colors.grey.withOpacity(0.3),
//               ),

//               // ===== Contenu principal =====
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: questions.length,
//                   onPageChanged: (index) {
//                     setState(() {
//                       currentPage = index;
//                       selectedAnswer = null;
//                     });
//                   },
//                   itemBuilder: (context, index) {
//                     final question = questions[index];
//                     return Padding(
//                       padding: const EdgeInsets.only(
//                         left: 32.0,
//                         right: 32.0,
//                         bottom: 54.0,
//                         top: 30.0,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // ===== Carte de question =====
//                           Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.only(
//                               left: 24,
//                               right: 24,
//                               top: 32,
//                               bottom: 24,
//                             ),
//                             decoration: BoxDecoration(
//                               gradient: const LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [Color(0xFFFCE7F3), Color(0xFFFBCFE8)],
//                               ),
//                               borderRadius: BorderRadius.circular(12),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.15),
//                                   blurRadius: 20,
//                                   offset: const Offset(0, 10),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 // Barre de progression
//                                 Container(
//                                   width: double.infinity,
//                                   height: 6,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                       20,
//                                       120,
//                                       120,
//                                       120,
//                                     ),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                   child: FractionallySizedBox(
//                                     alignment: Alignment.centerLeft,
//                                     widthFactor: question['progress'],
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.pink,
//                                         borderRadius: BorderRadius.circular(3),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Text(
//                                   'Question ${index + 1}/${questions.length}',
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Color.fromARGB(255, 51, 51, 51),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 16),
//                                 Text(
//                                   question['text'],
//                                   style: const TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                     height: 1.3,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),

//                           const Spacer(),
//                           const Text(
//                             'Select your answer',
//                             style: TextStyle(fontSize: 16, color: Colors.black),
//                           ),
//                           const SizedBox(height: 8),

//                           ...List.generate(question['answers'].length, (i) {
//                             final ans = question['answers'][i];
//                             return Padding(
//                               padding: const EdgeInsets.only(bottom: 8.0),
//                               child: _buildAnswerOption(
//                                 ans['text'],
//                                 ans['text'],
//                                 ans['isCorrect'],
//                               ),
//                             );
//                           }),

//                           const Spacer(),

//                           // ===== Bouton suivant =====
//                           SizedBox(
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: _onNext,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 12,
//                                   horizontal: 12,
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 elevation: 0,
//                               ),
//                               child: Text(
//                                 currentPage < questions.length - 1
//                                     ? 'Next question'
//                                     : 'Finish',
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
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

//   Widget _buildAnswerOption(String text, String value, bool? isCorrect) {
//     bool isSelected = selectedAnswer == value;

//     Color borderColor = Colors.black;
//     Widget? trailingIcon;

//     if (isCorrect == true && isSelected) {
//       borderColor = Colors.green;
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Colors.green,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.check, color: Colors.white, size: 16),
//       );
//     } else if (isCorrect == false && isSelected) {
//       borderColor = const Color(0xFFC0110C);
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Color(0xFFEF4444),
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.close, color: Colors.white, size: 16),
//       );
//     }

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedAnswer = value;
//         });
//       },
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(color: borderColor, width: 2),
//         ),
//         child: (trailingIcon != null)
//             ? Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Spacer(),
//                   Text(
//                     text,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const Spacer(),
//                   trailingIcon,
//                 ],
//               )
//             : Padding(
//                 padding: const EdgeInsets.only(right: 24.0),
//                 child: Text(
//                   text,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class QuizQuestionPage extends StatefulWidget {
//   const QuizQuestionPage({super.key});

//   @override
//   State<QuizQuestionPage> createState() => _QuizQuestionPageState();
// }

// class _QuizQuestionPageState extends State<QuizQuestionPage> {
//   final PageController _pageController = PageController();
//   int currentPage = 0;
//   String? selectedAnswer;

//   final List<Map<String, dynamic>> questions = [
//     {
//       'progress': 0.25,
//       'question1':
//           'If you want to\nintroduce yourself,\nwhat do you say\nafter "my name\nis..."?',
//       'answers': [
//         {'option1': 'Your name', 'isCorrect': true},
//         {'option2': 'Your age', 'isCorrect': false},
//         {'option3': 'Your city', 'isCorrect': false},
//       ],
//     },
//     {
//       'progress': 0.50,
//       'question2': 'What is the capital of France?',
//       'answers': [
//         {'option1': 'Paris', 'isCorrect': true},
//         {'option2': 'London', 'isCorrect': false},
//         {'option3': 'Berlin', 'isCorrect': false},
//       ],
//     },
//     {
//       'progress': 0.75,
//       'question3': 'Which language is used in Flutter?',
//       'answers': [
//         {'option1': 'Dart', 'isCorrect': true},
//         {'option2': 'Java', 'isCorrect': false},
//         {'option3': 'Kotlin', 'isCorrect': false},
//       ],
//     },
//     {
//       'progress': 1.0,
//       'question4': 'Which company developed Flutter?',
//       'answers': [
//         {'option1': 'Google', 'isCorrect': true},
//         {'option2': 'Facebook', 'isCorrect': false},
//         {'option3': 'Microsoft', 'isCorrect': false},
//       ],
//     },
//   ];

//   // Méthode pour obtenir le texte de la question
//   String _getQuestionText(Map<String, dynamic> question, int index) {
//     String key = 'question${index + 1}';
//     return question[key] ?? '';
//   }

//   // Méthode pour obtenir le texte de l'option
//   String _getOptionText(Map<String, dynamic> answer, int optionIndex) {
//     String key = 'option${optionIndex + 1}';
//     return answer[key] ?? '';
//   }

//   void _onNext() {
//     if (currentPage < questions.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text("Quiz terminé 🎉")));
//     }
//   }

//   void _onBack() {
//     if (currentPage > 0) {
//       _pageController.previousPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   void _onClose() {
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/backgroundBlanch.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== Barre supérieure avec icônes =====
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // 👇 Affiche la flèche de retour uniquement si on n'est pas sur la première page
//                     if (currentPage > 0)
//                       IconButton(
//                         icon: SvgPicture.asset(
//                           'assets/icons/Chevron_left.svg',
//                           color: Colors.black,
//                           width: 24,
//                           height: 24,
//                         ),
//                         onPressed: _onBack,
//                       )
//                     else
//                       const SizedBox(
//                         width: 48,
//                       ), // espace pour garder l'alignement
//                     IconButton(
//                       icon: SvgPicture.asset(
//                         'assets/icons/X.svg',
//                         color: Colors.black,
//                         width: 24,
//                         height: 24,
//                       ),
//                       onPressed: _onClose,
//                     ),
//                   ],
//                 ),
//               ),

//               // ===== Ligne grise de séparation =====
//               Container(
//                 width: double.infinity,
//                 height: 1,
//                 color: Colors.grey.withOpacity(0.3),
//               ),

//               // ===== Contenu principal =====
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: questions.length,
//                   onPageChanged: (index) {
//                     setState(() {
//                       currentPage = index;
//                       selectedAnswer = null;
//                     });
//                   },
//                   itemBuilder: (context, index) {
//                     final question = questions[index];
//                     return Padding(
//                       padding: const EdgeInsets.only(
//                         left: 32.0,
//                         right: 32.0,
//                         bottom: 54.0,
//                         top: 30.0,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // ===== Carte de question =====
//                           Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.only(
//                               left: 24,
//                               right: 24,
//                               top: 32,
//                               bottom: 24,
//                             ),
//                             decoration: BoxDecoration(
//                               gradient: const LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [Color(0xFFFCE7F3), Color(0xFFFBCFE8)],
//                               ),
//                               borderRadius: BorderRadius.circular(12),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.15),
//                                   blurRadius: 20,
//                                   offset: const Offset(0, 10),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 // Barre de progression
//                                 Container(
//                                   width: double.infinity,
//                                   height: 6,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                       20,
//                                       120,
//                                       120,
//                                       120,
//                                     ),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                   child: FractionallySizedBox(
//                                     alignment: Alignment.centerLeft,
//                                     widthFactor: question['progress'],
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.pink,
//                                         borderRadius: BorderRadius.circular(3),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Text(
//                                   'Question ${index + 1}/${questions.length}',
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Color.fromARGB(255, 51, 51, 51),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 16),
//                                 Text(
//                                   _getQuestionText(question, index),
//                                   style: const TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                     height: 1.3,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),

//                           const Spacer(),
//                           const Text(
//                             'Select your answer',
//                             style: TextStyle(fontSize: 16, color: Colors.black),
//                           ),
//                           const SizedBox(height: 8),

//                           ...List.generate(question['answers'].length, (i) {
//                             final ans = question['answers'][i];
//                             final optionText = _getOptionText(ans, i);
//                             return Padding(
//                               padding: const EdgeInsets.only(bottom: 8.0),
//                               child: _buildAnswerOption(
//                                 optionText,
//                                 optionText,
//                                 ans['isCorrect'],
//                               ),
//                             );
//                           }),

//                           const Spacer(),

//                           // ===== Bouton suivant =====
//                           SizedBox(
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: _onNext,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 12,
//                                   horizontal: 12,
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 elevation: 0,
//                               ),
//                               child: Text(
//                                 currentPage < questions.length - 1
//                                     ? 'Next question'
//                                     : 'Finish',
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
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

//   Widget _buildAnswerOption(String text, String value, bool? isCorrect) {
//     bool isSelected = selectedAnswer == value;

//     Color borderColor = Colors.black;
//     Widget? trailingIcon;

//     if (isCorrect == true && isSelected) {
//       borderColor = Colors.green;
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Colors.green,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.check, color: Colors.white, size: 16),
//       );
//     } else if (isCorrect == false && isSelected) {
//       borderColor = const Color(0xFFC0110C);
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Color(0xFFEF4444),
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.close, color: Colors.white, size: 16),
//       );
//     }

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedAnswer = value;
//         });
//       },
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(color: borderColor, width: 2),
//         ),
//         child: (trailingIcon != null)
//             ? Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Spacer(),
//                   Text(
//                     text,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const Spacer(),
//                   trailingIcon,
//                 ],
//               )
//             : Padding(
//                 padding: const EdgeInsets.only(right: 24.0),
//                 child: Text(
//                   text,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:math';

// class QuizQuestionPage extends StatefulWidget {
//   const QuizQuestionPage({super.key});

//   @override
//   State<QuizQuestionPage> createState() => _QuizQuestionPageState();
// }

// class _QuizQuestionPageState extends State<QuizQuestionPage> {
//   final PageController _pageController = PageController();
//   int currentPage = 0;
//   String? selectedAnswer;
//   late List<Map<String, dynamic>> shuffledQuestions;

//   final List<Map<String, dynamic>> questions = [
//     {
//       'progress': 0.25,
//       'question1':
//           'If you want to\nintroduce yourself,\nwhat do you say\nafter "my name\nis..."?',
//       'answers': [
//         {'option1': 'Your name', 'isCorrect': true},
//         {'option2': 'Your age', 'isCorrect': false},
//         {'option3': 'Your city', 'isCorrect': false},
//       ],
//     },
//     {
//       'progress': 0.50,
//       'question2': 'What is the capital of France?',
//       'answers': [
//         {'option1': 'Paris', 'isCorrect': true},
//         {'option2': 'London', 'isCorrect': false},
//         {'option3': 'Berlin', 'isCorrect': false},
//       ],
//     },
//     {
//       'progress': 0.75,
//       'question3': 'Which language is used in Flutter?',
//       'answers': [
//         {'option1': 'Dart', 'isCorrect': true},
//         {'option2': 'Java', 'isCorrect': false},
//         {'option3': 'Kotlin', 'isCorrect': false},
//       ],
//     },
//     {
//       'progress': 1.0,
//       'question4': 'Which company developed Flutter?',
//       'answers': [
//         {'option1': 'Google', 'isCorrect': true},
//         {'option2': 'Facebook', 'isCorrect': false},
//         {'option3': 'Microsoft', 'isCorrect': false},
//       ],
//     },
//   ];

//   @override
//   void initState() {
//     super.initState();
//     // Mélanger les réponses pour chaque question
//     shuffledQuestions = questions.map((q) {
//       final shuffledAnswers = List<Map<String, dynamic>>.from(q['answers']);
//       shuffledAnswers.shuffle(Random());
//       return {...q, 'answers': shuffledAnswers};
//     }).toList();
//   }

//   // Méthode pour obtenir le texte de la question
//   String _getQuestionText(Map<String, dynamic> question, int index) {
//     String key = 'question${index + 1}';
//     return question[key] ?? '';
//   }

//   // Méthode pour obtenir le texte de l'option
//   String _getOptionText(Map<String, dynamic> answer) {
//     // Chercher la clé qui contient le texte
//     for (var key in answer.keys) {
//       if (key.startsWith('option')) {
//         return answer[key] ?? '';
//       }
//     }
//     return '';
//   }

//   void _onNext() {
//     if (currentPage < shuffledQuestions.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text("Quiz terminé 🎉")));
//     }
//   }

//   void _onBack() {
//     if (currentPage > 0) {
//       _pageController.previousPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   void _onClose() {
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/backgroundBlanch.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ===== Barre supérieure avec icônes =====
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // 👇 Affiche la flèche de retour uniquement si on n'est pas sur la première page
//                     if (currentPage > 0)
//                       IconButton(
//                         icon: SvgPicture.asset(
//                           'assets/icons/Chevron_left.svg',
//                           color: Colors.black,
//                           width: 24,
//                           height: 24,
//                         ),
//                         onPressed: _onBack,
//                       )
//                     else
//                       const SizedBox(
//                         width: 48,
//                       ), // espace pour garder l'alignement
//                     IconButton(
//                       icon: SvgPicture.asset(
//                         'assets/icons/X.svg',
//                         color: Colors.black,
//                         width: 24,
//                         height: 24,
//                       ),
//                       onPressed: _onClose,
//                     ),
//                   ],
//                 ),
//               ),

//               // ===== Ligne grise de séparation =====
//               Container(
//                 width: double.infinity,
//                 height: 1,
//                 color: Colors.grey.withOpacity(0.3),
//               ),

//               // ===== Contenu principal =====
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: shuffledQuestions.length,
//                   onPageChanged: (index) {
//                     setState(() {
//                       currentPage = index;
//                       selectedAnswer = null;
//                     });
//                   },
//                   itemBuilder: (context, index) {
//                     final question = shuffledQuestions[index];
//                     return Padding(
//                       padding: const EdgeInsets.only(
//                         left: 32.0,
//                         right: 32.0,
//                         bottom: 54.0,
//                         top: 30.0,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // ===== Carte de question =====
//                           Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.only(
//                               left: 24,
//                               right: 24,
//                               top: 32,
//                               bottom: 24,
//                             ),
//                             decoration: BoxDecoration(
//                               gradient: const LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [Color(0xFFFCE7F3), Color(0xFFFBCFE8)],
//                               ),
//                               borderRadius: BorderRadius.circular(12),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.15),
//                                   blurRadius: 20,
//                                   offset: const Offset(0, 10),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 // Barre de progression
//                                 Container(
//                                   width: double.infinity,
//                                   height: 6,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                       20,
//                                       120,
//                                       120,
//                                       120,
//                                     ),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                   child: FractionallySizedBox(
//                                     alignment: Alignment.centerLeft,
//                                     widthFactor: question['progress'],
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.pink,
//                                         borderRadius: BorderRadius.circular(3),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Text(
//                                   'Question ${index + 1}/${shuffledQuestions.length}',
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Color.fromARGB(255, 51, 51, 51),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 16),
//                                 Text(
//                                   _getQuestionText(question, index),
//                                   style: const TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                     height: 1.3,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),

//                           const Spacer(),
//                           const Text(
//                             'Select your answer',
//                             style: TextStyle(fontSize: 16, color: Colors.black),
//                           ),
//                           const SizedBox(height: 8),

//                           ...List.generate(question['answers'].length, (i) {
//                             final ans = question['answers'][i];
//                             final optionText = _getOptionText(ans);
//                             return Padding(
//                               padding: const EdgeInsets.only(bottom: 8.0),
//                               child: _buildAnswerOption(
//                                 optionText,
//                                 optionText,
//                                 ans['isCorrect'],
//                               ),
//                             );
//                           }),

//                           const Spacer(),

//                           // ===== Bouton suivant =====
//                           SizedBox(
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: _onNext,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 12,
//                                   horizontal: 12,
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 elevation: 0,
//                               ),
//                               child: Text(
//                                 currentPage < shuffledQuestions.length - 1
//                                     ? 'Next question'
//                                     : 'Finish',
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
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

//   Widget _buildAnswerOption(String text, String value, bool? isCorrect) {
//     bool isSelected = selectedAnswer == value;

//     Color borderColor = Colors.black;
//     Widget? trailingIcon;

//     if (isCorrect == true && isSelected) {
//       borderColor = Colors.green;
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Colors.green,
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.check, color: Colors.white, size: 16),
//       );
//     } else if (isCorrect == false && isSelected) {
//       borderColor = const Color(0xFFC0110C);
//       trailingIcon = Container(
//         width: 24,
//         height: 24,
//         decoration: const BoxDecoration(
//           color: Color(0xFFEF4444),
//           shape: BoxShape.circle,
//         ),
//         child: const Icon(Icons.close, color: Colors.white, size: 16),
//       );
//     }

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedAnswer = value;
//         });
//       },
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(color: borderColor, width: 2),
//         ),
//         child: (trailingIcon != null)
//             ? Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Spacer(),
//                   Text(
//                     text,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const Spacer(),
//                   trailingIcon,
//                 ],
//               )
//             : Padding(
//                 padding: const EdgeInsets.only(right: 24.0),
//                 child: Text(
//                   text,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }
// ------------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({Key? key}) : super(key: key);

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
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Card rose en haut
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.all(16),
//               padding: EdgeInsets.all(24),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [Color(0xFFFCE7F3), Color(0xFFFBCFE8)],
//                 ),
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 20,
//                     offset: Offset(0, 10),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Your lesson 1',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'This can be a quick description of the lesson',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black87,
//                             height: 1.4,
//                           ),
//                         ),
//                         SizedBox(height: 16),
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 12,
//                             vertical: 6,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Color(0xFFFACC15),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Text(
//                             '2 points earned!',
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 16),
//                   // Icône cahiers empilés
//                   Stack(
//                     children: [
//                       Transform.translate(
//                         offset: Offset(8, 8),
//                         child: _buildNotebookIcon(
//                           Color(0xFFEC4899).withOpacity(0.6),
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(4, 4),
//                         child: _buildNotebookIcon(
//                           Color(0xFFEC4899).withOpacity(0.8),
//                         ),
//                       ),
//                       _buildNotebookIcon(Color(0xFFEC4899)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 8),
//             // Liste des options
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: [
//                   _buildOptionCard(
//                     icon: Icons.menu_book_rounded,
//                     iconColor: Color(0xFFEC4899),
//                     title: 'Cheat sheets',
//                     description:
//                         'Learn your lesson in a very easy, fun and interactive way!',
//                   ),
//                   SizedBox(height: 12),
//                   _buildOptionCard(
//                     icon: Icons.star_outline_rounded,
//                     iconColor: Color(0xFFEC4899),
//                     title: 'Test your knowledge!',
//                     description:
//                         'How much do you know? Take the tests and see how much you\'ve learned!',
//                   ),
//                   SizedBox(height: 12),
//                   _buildOptionCard(
//                     icon: Icons.record_voice_over_rounded,
//                     iconColor: Color(0xFFEC4899),
//                     title: 'Récitation guidée',
//                     description:
//                         'Analyse et corrige une récitation of your lesson',
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40),
//             // Cercle rose avec visage
//             Container(
//               width: 180,
//               height: 180,
//               decoration: BoxDecoration(
//                 color: Color(0xFFEC4899),
//                 shape: BoxShape.circle,
//               ),
//               child: Center(
//                 child: CustomPaint(
//                   size: Size(80, 40),
//                   painter: HappyFacePainter(),
//                 ),
//               ),
//             ),
//             SizedBox(height: 40),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNotebookIcon(Color color) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.white, width: 2),
//       ),
//       child: Center(
//         child: Icon(Icons.description, color: Colors.white, size: 24),
//       ),
//     );
//   }

//   Widget _buildOptionCard({
//     required IconData icon,
//     required Color iconColor,
//     required String title,
//     required String description,
//   }) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: Color(0xFFE5E7EB), width: 1),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48,
//             height: 48,
//             decoration: BoxDecoration(
//               color: iconColor.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: iconColor, size: 28),
//           ),
//           SizedBox(width: 16),
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
//                   description,
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Color(0xFF6B7280),
//                     height: 1.4,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Icon(Icons.chevron_right, color: Colors.black, size: 24),
//         ],
//       ),
//     );
//   }
// }

// class HappyFacePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 4
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     // Yeux fermés (arcs)
//     final leftEyePath = Path();
//     leftEyePath.moveTo(size.width * 0.3, size.height * 0.3);
//     leftEyePath.quadraticBezierTo(
//       size.width * 0.35,
//       size.height * 0.4,
//       size.width * 0.4,
//       size.height * 0.3,
//     );
//     canvas.drawPath(leftEyePath, paint);

//     final rightEyePath = Path();
//     rightEyePath.moveTo(size.width * 0.6, size.height * 0.3);
//     rightEyePath.quadraticBezierTo(
//       size.width * 0.65,
//       size.height * 0.4,
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

// import 'package:flutter/material.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // Supprime l'AppBar si tu veux que la carte rose soit derrière la status bar
//       body: Column(
//         children: [
//           // Card rose en haut, s'étend sous la status bar et sur toute la largeur
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(
//               left: 24,
//               right: 24,
//               top: MediaQuery.of(context).padding.top + 24, // sous status bar
//               bottom: 24,
//             ),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   Color(0xFFFFCCE8),
//                   Color(0xFFFFBCE1),
//                 ], // gradient modifié
//               ),
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Your lesson 1',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'This can be a quick description of the lesson',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.black87,
//                           height: 1.4,
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 6,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Color(0xFFFACC15),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Text(
//                           '2 points earned!',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 // Icône cahiers empilés
//                 Stack(
//                   children: [
//                     Transform.translate(
//                       offset: Offset(8, 8),
//                       child: _buildNotebookIcon(
//                         Color(0xFFEC4899).withOpacity(0.6),
//                       ),
//                     ),
//                     Transform.translate(
//                       offset: Offset(4, 4),
//                       child: _buildNotebookIcon(
//                         Color(0xFFEC4899).withOpacity(0.8),
//                       ),
//                     ),
//                     _buildNotebookIcon(Color(0xFFEC4899)),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 16),
//           // Liste des options, non scrollable
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               children: [
//                 _buildOptionCard(
//                   icon: Icons.menu_book_rounded,
//                   iconColor: Color(0xFFEC4899),
//                   title: 'Cheat sheets',
//                   description:
//                       'Learn your lesson in a very easy,\nfun and interactive way!',
//                 ),
//                 SizedBox(height: 8),
//                 _buildOptionCard(
//                   icon: Icons.star_outline_rounded,
//                   iconColor: Color(0xFFEC4899),
//                   title: 'Test your knowledge!',
//                   description:
//                       'How much do you know? Take the tests and see how much you\'ve learned!',
//                 ),
//                 SizedBox(height: 8),
//                 _buildOptionCard(
//                   icon: Icons.record_voice_over_rounded,
//                   iconColor: Color(0xFFEC4899),
//                   title: 'Récitation guidée',
//                   description:
//                       'Analyse et corrige une récitation of your lesson',
//                 ),
//               ],
//             ),
//           ),

//           Image.asset('assets/images/logos/logorose1.png', fit: BoxFit.none),
//           Spacer(),
//         ],
//       ),
//     );
//   }

//   Widget _buildNotebookIcon(Color color) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.white, width: 2),
//       ),
//       child: Center(
//         child: Icon(Icons.description, color: Colors.white, size: 24),
//       ),
//     );
//   }

//   Widget _buildOptionCard({
//     required IconData icon,
//     required Color iconColor,
//     required String title,
//     required String description,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Color(0xFFE5E7EB), width: 1),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48,
//             height: 48,
//             decoration: BoxDecoration(
//               color: iconColor.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: iconColor, size: 32),
//           ),
//           SizedBox(width: 16),
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
//                   description,
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Color(0xFF6B7280),
//                     height: 1.4,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Icon(Icons.chevron_right, color: Colors.black, size: 24),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // Card rose en haut, s'étend sous la status bar et sur toute la largeur
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(
//               left: 24,
//               right: 24,
//               top: MediaQuery.of(context).padding.top + 24, // sous status bar
//               bottom: 24,
//             ),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Color(0xFFFFCCE8), Color(0xFFFFBCE1)],
//               ),
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Your lesson 1',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'This can be a quick description of the lesson',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.black87,
//                           height: 1.4,
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 6,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Color(0xFFFACC15),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Text(
//                           '2 points earned!',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 // Icônes cahiers empilés avec SVG
//                 Stack(
//                   children: [
//                     Transform.translate(
//                       offset: Offset(8, 8),
//                       child: _buildNotebookIcon('assets/icons/notebook.svg'),
//                     ),
//                     Transform.translate(
//                       offset: Offset(4, 4),
//                       child: _buildNotebookIcon('assets/icons/notebook.svg'),
//                     ),
//                     _buildNotebookIcon('assets/icons/notebook.svg'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 16),
//           // Liste des options, non scrollable
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               children: [
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: Color(0xFFEC4899),
//                   title: 'Cheat sheets',
//                   description:
//                       'Learn your lesson in a very easy,\nfun and interactive way!',
//                   onTap: () {
//                     print('Cheat sheets clicked!');
//                     // Navigator.push(...); // par exemple
//                   },
//                 ),
//                 SizedBox(height: 8),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: Color(0xFFEC4899),
//                   title: 'Test your knowledge!',
//                   description:
//                       'How much do you know? Take the tests and see how much you\'ve learned!',
//                   onTap: () {
//                     print('Cheat sheets clicked!');
//                     // Navigator.push(...); // par exemple
//                   },
//                 ),
//                 SizedBox(height: 8),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: Color(0xFFEC4899),
//                   title: 'Récitation guidée',
//                   description:
//                       'Analyse et corrige une récitation of your lesson',
//                   onTap: () {
//                     print('Cheat sheets clicked!');
//                     // Navigator.push(...); // par exemple
//                   },
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 16),
//           // Image en bas
//           Image.asset('assets/images/logos/logorose1.png', fit: BoxFit.none),
//           Spacer(),
//         ],
//       ),
//     );
//   }

//   // Icône SVG pour le notebook
//   Widget _buildNotebookIcon(String assetPath, {double size = 24}) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: Color(0xFFEC4899),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.white, width: 2),
//       ),
//       child: Center(
//         child: SvgPicture.asset(
//           assetPath,
//           width: size,
//           height: size,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   // Carte d’option avec icône SVG — cliquable
//   Widget _buildOptionCard({
//     required String svgPath,
//     required Color iconColor,
//     required String title,
//     required String description,
//     VoidCallback? onTap, // callback optionnel
//   }) {
//     return InkWell(
//       onTap: onTap ?? () {}, // action par défaut
//       borderRadius: BorderRadius.circular(12),
//       splashColor: iconColor.withOpacity(0.1), // effet d’onde coloré
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: Color(0xFFE5E7EB), width: 1),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 48,
//               height: 48,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 32,
//                   height: 32,
//                   color: iconColor,
//                 ),
//               ),
//             ),
//             SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 13,
//                       color: Color(0xFF6B7280),
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Icon(Icons.chevron_right, color: Colors.black, size: 24),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // === Carte rose en haut (sous la status bar) ===
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(
//               left: 24,
//               right: 24,
//               top: MediaQuery.of(context).padding.top + 16,
//               bottom: 24,
//             ),
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Color(0xFFFFCCE8), Color(0xFFFFBCE1)],
//               ),
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // === Bouton retour ===
//                 IconButton(
//                   icon: const Icon(
//                     Icons.arrow_back_ios_new_rounded,
//                     color: Colors.black,
//                     size: 22,
//                   ),
//                   padding: const EdgeInsets.only(right: 8),
//                   onPressed: () => Navigator.pop(context),
//                 ),

//                 // === Texte principal ===
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Your lesson 1',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       const Text(
//                         'This can be a quick description of the lesson',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.black87,
//                           height: 1.4,
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 6,
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFFACC15),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: const Text(
//                           '2 points earned!',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const SizedBox(width: 16),
//                 // === Cahiers SVG empilés ===
//                 Stack(
//                   children: [
//                     Transform.translate(
//                       offset: const Offset(8, 8),
//                       child: _buildNotebookIcon('assets/icons/notebook.svg'),
//                     ),
//                     Transform.translate(
//                       offset: const Offset(4, 4),
//                       child: _buildNotebookIcon('assets/icons/notebook.svg'),
//                     ),
//                     _buildNotebookIcon('assets/icons/notebook.svg'),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 16),

//           // === Liste des options ===
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               children: [
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Cheat sheets',
//                   description:
//                       'Learn your lesson in a very easy,\nfun and interactive way!',
//                   onTap: () {
//                     print('Cheat sheets clicked!');
//                   },
//                 ),
//                 const SizedBox(height: 8),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Test your knowledge!',
//                   description:
//                       'How much do you know? Take the tests and see how much you\'ve learned!',
//                   onTap: () {
//                     print('Test clicked!');
//                   },
//                 ),
//                 const SizedBox(height: 8),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Récitation guidée',
//                   description:
//                       'Analyse et corrige une récitation of your lesson',
//                   onTap: () {
//                     print('Récitation clicked!');
//                   },
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 16),

//           // === Image en bas ===
//           Image.asset('assets/images/logos/logorose1.png', fit: BoxFit.none),
//           const Spacer(),
//         ],
//       ),
//     );
//   }

//   // === Icône SVG du notebook ===
//   static Widget _buildNotebookIcon(String assetPath, {double size = 24}) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: const Color(0xFFEC4899),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.white, width: 2),
//       ),
//       child: Center(
//         child: SvgPicture.asset(
//           assetPath,
//           width: size,
//           height: size,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   // === Carte cliquable ===
//   Widget _buildOptionCard({
//     required String svgPath,
//     required Color iconColor,
//     required String title,
//     required String description,
//     VoidCallback? onTap,
//   }) {
//     return InkWell(
//       onTap: onTap ?? () {},
//       borderRadius: BorderRadius.circular(12),
//       splashColor: iconColor.withOpacity(0.1),
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 48,
//               height: 48,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 32,
//                   height: 32,
//                   color: iconColor,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     description,
//                     style: const TextStyle(
//                       fontSize: 13,
//                       color: Color(0xFF6B7280),
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Icon(Icons.chevron_right, color: Colors.black, size: 24),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // === Carte rose en haut (sous la status bar) ===
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(
//               left: 24,
//               right: 24,
//               top: MediaQuery.of(context).padding.top + 16,
//               bottom: 24,
//             ),
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Color(0xFFFFCCE8), Color(0xFFFFBCE1)],
//               ),
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // === Ligne du bouton retour ===
//                 IconButton(
//                   icon: const Icon(
//                     Icons.arrow_back_ios_new_rounded,
//                     color: Colors.black,
//                     size: 22,
//                   ),
//                   onPressed: () {},
//                 ),

//                 const SizedBox(height: 8),

//                 // === Contenu principal ===
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Your lesson 1',
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           const Text(
//                             'This can be a quick description of the lesson',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.black87,
//                               height: 1.4,
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 12,
//                               vertical: 6,
//                             ),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFFFACC15),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: const Text(
//                               '2 points earned!',
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 16),

//                     // === Cahiers SVG empilés ===
//                     Stack(
//                       children: [
//                         Transform.translate(
//                           offset: const Offset(8, 8),
//                           child: _buildNotebookIcon(
//                             'assets/icons/notebook.svg',
//                           ),
//                         ),
//                         Transform.translate(
//                           offset: const Offset(4, 4),
//                           child: _buildNotebookIcon(
//                             'assets/icons/notebook.svg',
//                           ),
//                         ),
//                         _buildNotebookIcon('assets/icons/notebook.svg'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 16),

//           // === Liste des options ===
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               children: [
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Cheat sheets',
//                   description:
//                       'Learn your lesson in a very easy,\nfun and interactive way!',
//                   onTap: () {
//                     print('Cheat sheets clicked!');
//                   },
//                 ),
//                 const SizedBox(height: 8),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Test your knowledge!',
//                   description:
//                       'How much do you know? Take the tests and see how much you\'ve learned!',
//                   onTap: () {
//                     print('Test clicked!');
//                   },
//                 ),
//                 const SizedBox(height: 8),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Récitation guidée',
//                   description:
//                       'Analyse et corrige une récitation of your lesson',
//                   onTap: () {
//                     print('Récitation clicked!');
//                   },
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 16),

//           // === Image en bas ===
//           Image.asset('assets/images/logos/logorose1.png', fit: BoxFit.none),
//           const Spacer(),
//         ],
//       ),
//     );
//   }

//   // === Icône SVG du notebook ===
//   static Widget _buildNotebookIcon(String assetPath, {double size = 24}) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: const Color(0xFFEC4899),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.white, width: 2),
//       ),
//       child: Center(
//         child: SvgPicture.asset(
//           assetPath,
//           width: size,
//           height: size,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   // === Carte cliquable ===
//   Widget _buildOptionCard({
//     required String svgPath,
//     required Color iconColor,
//     required String title,
//     required String description,
//     VoidCallback? onTap,
//   }) {
//     return InkWell(
//       onTap: onTap ?? () {},
//       borderRadius: BorderRadius.circular(12),
//       splashColor: iconColor.withOpacity(0.1),
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 48,
//               height: 48,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 32,
//                   height: 32,
//                   color: iconColor,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     description,
//                     style: const TextStyle(
//                       fontSize: 13,
//                       color: Color(0xFF6B7280),
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Icon(Icons.chevron_right, color: Colors.black, size: 24),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class LessonDetailPage extends StatelessWidget {
//   const LessonDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // === Carte rose en haut (sous la status bar) ===
//           Container(
//             height: 212.h,
//             width: double.infinity,
//             padding: EdgeInsets.only(
//               left: 24.w,
//               right: 24.w,
//               top: MediaQuery.of(context).padding.top + 12.h,
//               bottom: 24.h,
//             ),
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Color(0xFFFFCCE8), Color(0xFFFFBCE1)],
//               ),
//               borderRadius: BorderRadius.circular(20.r),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20.r,
//                   offset: Offset(0, 10.h),
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // === Ligne du bouton retour ===
//                 IconButton(
//                   icon: Icon(
//                     Icons.arrow_back_ios_new_rounded,
//                     color: Colors.black,
//                     size: 22.sp,
//                   ),
//                   onPressed: () => Navigator.pop(context),
//                 ),

//                 SizedBox(height: 8.h),

//                 // === Contenu principal ===
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Your lesson 1',
//                             style: TextStyle(
//                               fontSize: 24.sp,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           SizedBox(height: 8.h),
//                           Text(
//                             'This can be a quick description of the lesson',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               color: Colors.black87,
//                               height: 1.4,
//                             ),
//                           ),
//                           SizedBox(height: 12.h),
//                           Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 12.w,
//                               vertical: 6.h,
//                             ),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFFFACC15),
//                               borderRadius: BorderRadius.circular(20.r),
//                             ),
//                             child: Text(
//                               '2 points earned!',
//                               style: TextStyle(
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 16.w),

//                     // === Cahiers SVG empilés ===
//                     Stack(
//                       children: [
//                         Transform.translate(
//                           offset: Offset(8.w, 8.h),
//                           child: _buildNotebookIcon(
//                             'assets/icons/notebook.svg',
//                           ),
//                         ),
//                         Transform.translate(
//                           offset: Offset(4.w, 4.h),
//                           child: _buildNotebookIcon(
//                             'assets/icons/notebook.svg',
//                           ),
//                         ),
//                         _buildNotebookIcon('assets/icons/notebook.svg'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(height: 16.h),

//           // === Liste des options ===
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.w),
//             child: Column(
//               children: [
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Cheat sheets',
//                   description:
//                       'Learn your lesson in a very easy,\nfun and interactive way!',
//                   onTap: () => print('Cheat sheets clicked!'),
//                 ),
//                 SizedBox(height: 8.h),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Test your knowledge!',
//                   description:
//                       'How much do you know? Take the tests and see how much you\'ve learned!',
//                   onTap: () => print('Test clicked!'),
//                 ),
//                 SizedBox(height: 8.h),
//                 _buildOptionCard(
//                   svgPath: 'assets/icons/Bookopen.svg',
//                   iconColor: const Color(0xFFEC4899),
//                   title: 'Récitation guidée',
//                   description:
//                       'Analyse et corrige une récitation of your lesson',
//                   onTap: () => print('Récitation clicked!'),
//                 ),
//               ],
//             ),
//           ),

//           Image.asset('assets/images/logos/logorose1.png', fit: BoxFit.none),
//           const Spacer(),
//         ],
//       ),
//     );
//   }

//   // === Icône SVG du notebook ===
//   static Widget _buildNotebookIcon(String assetPath, {double size = 24}) {
//     return Container(
//       width: 50.w,
//       height: 50.w,
//       decoration: BoxDecoration(
//         color: const Color(0xFFEC4899),
//         borderRadius: BorderRadius.circular(8.r),
//         border: Border.all(color: Colors.white, width: 2.w),
//       ),
//       child: Center(
//         child: SvgPicture.asset(
//           assetPath,
//           width: size.w,
//           height: size.w,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   // === Carte cliquable ===
//   Widget _buildOptionCard({
//     required String svgPath,
//     required Color iconColor,
//     required String title,
//     required String description,
//     VoidCallback? onTap,
//   }) {
//     return InkWell(
//       onTap: onTap ?? () {},
//       borderRadius: BorderRadius.circular(12.r),
//       splashColor: iconColor.withOpacity(0.1),
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12.r),
//           border: Border.all(color: const Color(0xFFE5E7EB), width: 1.w),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10.r,
//               offset: Offset(0, 4.h),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 32.w,
//               height: 32.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12.r),
//               ),
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 32.w,
//                   height: 32.w,
//                   color: iconColor,
//                 ),
//               ),
//             ),
//             SizedBox(width: 16.w),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 13.sp,
//                       color: const Color(0xFF6B7280),
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Icon(Icons.chevron_right, color: Colors.black, size: 24.sp),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ------------------------------------------------------------- cheat sheet ----------------------------------------------------------

// import 'package:flutter/material.dart';

// class CheatSheetPage extends StatefulWidget {
//   const CheatSheetPage({super.key});

//   @override
//   State<CheatSheetPage> createState() => _CheatSheetPageState();
// }

// class _CheatSheetPageState extends State<CheatSheetPage> {
//   final PageController _pageController = PageController();
//   int currentPage = 0;

//   // === Contenu des cheat sheets ===
//   final List<Map<String, String>> cheatSheets = [
//     {
//       'title': 'Cheat sheet 1',
//       'content':
//           '''This can be a quick description of the lesson. This can be a quick description of the lesson. This can be a quick description of the lesson. This can be a quick description of the lesson.

// This can be a quick description of the lesson. This can be a quick description of the lesson.

// This can be a quick description of the lesson. This can be a quick description of the lesson.

// This can be a quick description of the lesson. This can be a quick description of the lesson.''',
//     },
//     {
//       'title': 'Cheat sheet 2',
//       'content':
//           '''Another quick description for the second cheat sheet. This provides helpful information about the topic.

// Key points to remember:
// - Important detail one
// - Important detail two
// - Important detail three

// Additional notes and explanations go here.''',
//     },
//     {
//       'title': 'Cheat sheet 3',
//       'content':
//           '''The third cheat sheet contains more useful information. Here are some tips and tricks.

// Remember these concepts:
// • First concept
// • Second concept
// • Third concept

// Practice makes perfect!''',
//     },
//     //     {
//     //       'title': 'Cheat sheet 4',
//     //       'content':
//     //           '''Final cheat sheet with essential information. Review all the materials carefully.

//     // Summary points:
//     // 1. Review regularly
//     // 2. Practice daily
//     // 3. Ask questions
//     // 4. Stay motivated

//     // You're doing great!''',
//     //     },
//     //     {
//     //       'title': 'Cheat sheet 5',
//     //       'content':
//     //           '''Bonus cheat sheet with extra tips. Keep learning and improving every day.

//     // Additional resources:
//     // - Resource one
//     // - Resource two
//     // - Resource three

//     // Keep up the excellent work!''',
//     //     },
//   ];

//   void _onPageChanged(int index) {
//     setState(() {
//       currentPage = index;
//     });
//   }

//   void _onClose() {
//     Navigator.of(context).pop();
//   }

//   void _onBack() {
//     if (currentPage > 0) {
//       _pageController.previousPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       Navigator.of(context).pop();
//     }
//   }

//   void _onNext() {
//     if (currentPage < cheatSheets.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       // Fin des cheat sheets
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("Tu as terminé toutes les cheat sheets 🎉"),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/backgroundBlanch.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // ===== Header =====
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // 👇 On affiche la flèche retour seulement si currentPage > 0
//                         if (currentPage > 0)
//                           GestureDetector(
//                             onTap: _onBack,
//                             child: const Icon(
//                               Icons.arrow_back,
//                               color: Colors.black,
//                               size: 28,
//                             ),
//                           )
//                         else
//                           const SizedBox(
//                             width: 28,
//                           ), // espace vide pour garder l'alignement
//                         GestureDetector(
//                           onTap: _onClose,
//                           child: const Icon(
//                             Icons.close,
//                             color: Colors.black,
//                             size: 28,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(height: 1, color: const Color(0xFFE5E7EB)),
//                 ],
//               ),

//               const SizedBox(height: 40),

//               // ===== PageView =====
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: cheatSheets.length,
//                   onPageChanged: _onPageChanged,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           border: Border.all(
//                             color: const Color(0xFFEC4899),
//                             width: 3,
//                           ),
//                         ),
//                         child: SingleChildScrollView(
//                           padding: const EdgeInsets.all(24.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 cheatSheets[index]['title']!,
//                                 style: const TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               const SizedBox(height: 16),
//                               Text(
//                                 cheatSheets[index]['content']!,
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Color(0xFF6B7280),
//                                   height: 1.6,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               const SizedBox(height: 24),

//               // ===== Indicateurs =====
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                   cheatSheets.length,
//                   (index) => AnimatedContainer(
//                     duration: const Duration(milliseconds: 300),
//                     margin: const EdgeInsets.symmetric(horizontal: 4),
//                     width: 8,
//                     height: 8,
//                     decoration: BoxDecoration(
//                       color: index == currentPage
//                           ? const Color(0xFFEC4899)
//                           : Colors.white,
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: const Color(0xFFEC4899),
//                         width: 2,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 32),

//               // ===== Bouton Next =====
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 32.0,
//                   right: 32.0,
//                   bottom: 40.0,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: _onNext,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         side: const BorderSide(color: Colors.black, width: 2),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       currentPage < cheatSheets.length - 1 ? 'Next' : 'Finish',
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
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

// ----------------------------------------------- Loader Lesson Parfait--------------------------------------------------------------------

// import 'package:flutter/material.dart';

// class RecitationLoaderScreen extends StatefulWidget {
//   const RecitationLoaderScreen({Key? key}) : super(key: key);

//   @override
//   State<RecitationLoaderScreen> createState() => _RecitationLoaderScreenState();
// }

// class _RecitationLoaderScreenState extends State<RecitationLoaderScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _pulseAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _pulseAnimation = Tween<double>(
//       begin: 1.0,
//       end: 1.1,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/LoaderRoseBackground.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Stack(
//           children: [
//             // Contenu principal
//             SafeArea(
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           // Personnage animé
//                           ScaleTransition(
//                             scale: _pulseAnimation,
//                             child: Image.asset(
//                               'assets/images/GroupeFaceRose.png',
//                               width: 160,
//                               height: 160,
//                             ),
//                           ),

//                           SizedBox(height: 50),

//                           // Titre "Sit tight!"
//                           Text(
//                             'Sit tight!',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFF2D2D2D),
//                               letterSpacing: -0.5,
//                             ),
//                           ),

//                           SizedBox(height: 16),

//                           // Description
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 40),
//                             child: Text(
//                               'Boetia is processing your recitation in order to\ngive you the best feedback!',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 color: Color(0xFF4A4A4A),
//                                 height: 1.5,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Bouton "Annuler le lesson"
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(30, 0, 30, 40),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: () {
//                           // Action d'annulation
//                           // Navigator.pop(context);
//                         },
//                         borderRadius: BorderRadius.circular(30),
//                         child: Container(
//                           width: double.infinity,
//                           height: 56,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: Color(0xFF2D2D2D),
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Annuler le lesson',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xFF2D2D2D),
//                               ),
//                             ),
//                           ),
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
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class RecitationLoaderScreen extends StatefulWidget {
//   const RecitationLoaderScreen({Key? key}) : super(key: key);

//   @override
//   State<RecitationLoaderScreen> createState() => _RecitationLoaderScreenState();
// }

// class _RecitationLoaderScreenState extends State<RecitationLoaderScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _pulseAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _pulseAnimation = Tween<double>(
//       begin: 1.0,
//       end: 1.1,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
//             image: AssetImage('assets/images/LoaderRoseBackground.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.0, 48.0, 32.0, 54.0),
//             child: Column(
//               children: [
//                 // Spacer pour centrer le contenu verticalement
//                 Spacer(flex: 2),

//                 // Personnage animé
//                 ScaleTransition(
//                   scale: _pulseAnimation,
//                   child: Image.asset(
//                     'assets/images/GroupeFaceRose.png',
//                     width: 166.38.w,
//                     height: 166.38.w,
//                   ),
//                 ),

//                 SizedBox(height: 24.h),

//                 // Titre "Sit tight!"
//                 Text(
//                   'Sit tight!',
//                   style: TextStyle(
//                     fontSize: 32.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     letterSpacing: -0.5,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // Description
//                 Text(
//                   'Boetia is processing your recitation in order to\ngive you the best feedback!',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),

//                 // Spacer pour pousser le bouton vers le bas
//                 Spacer(flex: 2),

//                 // Bouton "Annuler le lesson"
//                 Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     onTap: () {
//                       // Action d'annulation
//                       Navigator.pop(context);
//                     },
//                     borderRadius: BorderRadius.circular(30.r),
//                     child: Container(
//                       width: double.infinity,
//                       height: 56.h,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black, width: 1.w),
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Annuler le lesson',
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 // SizedBox(height: 40.h),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ----------------------------------------------- Loader Dictation Parfait--------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AnalysingWordsLoaderScreen extends StatefulWidget {
//   const AnalysingWordsLoaderScreen({Key? key}) : super(key: key);

//   @override
//   State<AnalysingWordsLoaderScreen> createState() =>
//       _AnalysingWordsLoaderScreenState();
// }

// class _AnalysingWordsLoaderScreenState extends State<AnalysingWordsLoaderScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _pulseAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _pulseAnimation = Tween<double>(
//       begin: 1.0,
//       end: 1.1,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
//             image: AssetImage('assets/images/Walkthrough4.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//             child: Column(
//               children: [
//                 // Spacer pour centrer le contenu verticalement
//                 Spacer(flex: 2),

//                 // Personnage animé
//                 ScaleTransition(
//                   scale: _pulseAnimation,
//                   child: Image.asset(
//                     'assets/images/Group7.png',
//                     width: 289.09.w,
//                     height: 123.23.w,
//                   ),
//                 ),

//                 SizedBox(height: 24.h),

//                 // Titre "Analysing words..."
//                 Text(
//                   'Analysing words...',
//                   style: TextStyle(
//                     fontSize: 32.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     letterSpacing: -0.5,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // Description
//                 Text(
//                   'Boetia is analysing the uploaded information',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),

//                 // Spacer pour pousser le bouton vers le bas
//                 Spacer(flex: 2),

//                 // Bouton "Annuler le dictation"
//                 Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     onTap: () {
//                       // Action d'annulation
//                       Navigator.pop(context);
//                     },
//                     borderRadius: BorderRadius.circular(30.r),
//                     child: Container(
//                       width: double.infinity,
//                       height: 56.h,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black, width: 1.w),
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Annuler le dictation',
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                           ),
//                         ),
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

// class AnalysingWordsLoaderScreen extends StatefulWidget {
//   const AnalysingWordsLoaderScreen({Key? key}) : super(key: key);

//   @override
//   State<AnalysingWordsLoaderScreen> createState() =>
//       _AnalysingWordsLoaderScreenState();
// }

// class _AnalysingWordsLoaderScreenState extends State<AnalysingWordsLoaderScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _pulseAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _pulseAnimation = Tween<double>(
//       begin: 1.0,
//       end: 1.1,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final screenHeight = MediaQuery.of(context).size.height;
//     // final screenWidth = MediaQuery.of(context).size.width;
//     // final safeAreaTop = MediaQuery.of(context).padding.top;
//     // final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/Walkthrough4.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Stack(
//           children: [
//             // Image du personnage en haut à droite
//             Positioned(
//               top: 100.h,
//               right: -32.w,
//               child: ScaleTransition(
//                 scale: _pulseAnimation,
//                 child: Image.asset(
//                   'assets/images/Group7.png',
//                   width: 311.w,
//                   height: 155.w,
//                 ),
//               ),
//             ),

//             // Contenu principal
//             SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Spacer pour pousser le texte vers le milieu
//                     Spacer(flex: 3),

//                     // Titre "Analysing words..."
//                     Text(
//                       'Analysing words...',
//                       style: TextStyle(
//                         fontSize: 32.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         letterSpacing: -0.5,
//                         height: 1.2,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     // Description
//                     Text(
//                       'Boetia is analysing the uploaded information',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.black,
//                         height: 1.5,
//                       ),
//                     ),

//                     // Spacer pour pousser le bouton vers le bas
//                     Spacer(flex: 3),

//                     // Bouton "Annuler le dictation"
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: () {
//                           // Action d'annulation
//                           Navigator.pop(context);
//                         },
//                         borderRadius: BorderRadius.circular(30.r),
//                         child: Container(
//                           width: double.infinity,
//                           height: 56.h,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.black, width: 1.w),
//                             borderRadius: BorderRadius.circular(30.r),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Annuler le dictation',
//                               style: TextStyle(
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black,
//                               ),
//                             ),
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

// --------------------------------------------------- Loader Homework Parfait ------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AnalysingHomeworkLoaderScreen extends StatefulWidget {
//   const AnalysingHomeworkLoaderScreen({Key? key}) : super(key: key);

//   @override
//   State<AnalysingHomeworkLoaderScreen> createState() =>
//       _AnalysingHomeworkLoaderScreenState();
// }

// class _AnalysingHomeworkLoaderScreenState
//     extends State<AnalysingHomeworkLoaderScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _floatController;
//   late AnimationController _bounceController;

//   late Animation<double> _floatAnimation;
//   late Animation<double> _bounceAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de flottement vertical (haut/bas)
//     _floatController = AnimationController(
//       duration: const Duration(milliseconds: 2000),
//       vsync: this,
//     )..repeat(reverse: true);

//     _floatAnimation = Tween<double>(begin: -8.0, end: 8.0).animate(
//       CurvedAnimation(parent: _floatController, curve: Curves.easeInOut),
//     );

//     // Animation de rebond léger
//     _bounceController = AnimationController(
//       duration: const Duration(milliseconds: 1500),
//       vsync: this,
//     )..repeat(reverse: true);

//     _bounceAnimation = Tween<double>(begin: 1.0, end: 1.03).animate(
//       CurvedAnimation(parent: _bounceController, curve: Curves.easeInOut),
//     );
//   }

//   @override
//   void dispose() {
//     _floatController.dispose();
//     _bounceController.dispose();
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
//               children: [
//                 // Spacer pour centrer le contenu verticalement
//                 Spacer(flex: 2),

//                 // Personnage animé avec flottement et rebond
//                 AnimatedBuilder(
//                   animation: Listenable.merge([
//                     _floatAnimation,
//                     _bounceAnimation,
//                   ]),
//                   builder: (context, child) {
//                     return Transform.translate(
//                       offset: Offset(0, _floatAnimation.value),
//                       child: Transform.scale(
//                         scale: _bounceAnimation.value,
//                         child: Image.asset(
//                           'assets/images/logoTweens.png',
//                           width: 311.w,
//                           height: 217.h,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     );
//                   },
//                 ),

//                 SizedBox(height: 24.h),

//                 // Titre "Analysing homework..."
//                 Text(
//                   'Analysing\nhomework...',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 32.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     letterSpacing: -0.5,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // Description
//                 Text(
//                   'Boetia is analysing the uploaded information',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),

//                 // Spacer pour pousser le bouton vers le bas
//                 Spacer(flex: 2),

//                 // Bouton "Annuler le lesson"
//                 Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     onTap: () {
//                       // Action d'annulation
//                       // Navigator.pop(context);
//                     },
//                     borderRadius: BorderRadius.circular(30.r),
//                     child: Container(
//                       width: double.infinity,
//                       height: 56.h,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black, width: 1.w),
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Annuler le lesson',
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                           ),
//                         ),
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

// -----------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class ListeningScreen extends StatefulWidget {
//   const ListeningScreen({Key? key}) : super(key: key);

//   @override
//   State<ListeningScreen> createState() => _ListeningScreenState();
// }

// class _ListeningScreenState extends State<ListeningScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _pulseController;
//   late AnimationController _waveController;

//   late Animation<double> _pulseAnimation;
//   late Animation<double> _waveAnimation;

//   bool isPaused = false;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de pulsation pour le micro (simule l'écoute)
//     _pulseController = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     )..repeat(reverse: true);

//     _pulseAnimation = Tween<double>(begin: 0.95, end: 1.08).animate(
//       CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
//     );

//     // Animation d'onde sonore (rotation continue)
//     _waveController = AnimationController(
//       duration: const Duration(milliseconds: 2000),
//       vsync: this,
//     )..repeat();

//     _waveAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _waveController, curve: Curves.linear));
//   }

//   @override
//   void dispose() {
//     _pulseController.dispose();
//     _waveController.dispose();
//     super.dispose();
//   }

//   void _togglePause() {
//     setState(() {
//       isPaused = !isPaused;
//       if (isPaused) {
//         _pulseController.stop();
//         _waveController.stop();
//       } else {
//         _pulseController.repeat(reverse: true);
//         _waveController.repeat();
//       }
//     });
//   }

//   void _finish() {
//     // Action pour terminer l'enregistrement
//     Navigator.pop(context);
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
//         child: Stack(
//           children: [
//             SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(32.w, 48.h, 32.w, 54.h),
//                 child: Column(
//                   children: [
//                     // Spacer pour centrer le contenu verticalement
//                     Spacer(flex: 2),

//                     // Icône de micro animée avec ondes sonores
//                     Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         // Ondes sonores (cercles concentriques)
//                         AnimatedBuilder(
//                           animation: _waveAnimation,
//                           builder: (context, child) {
//                             return CustomPaint(
//                               size: Size(200.w, 200.w),
//                               painter: SoundWavePainter(
//                                 waveProgress: _waveAnimation.value,
//                                 isPaused: isPaused,
//                               ),
//                             );
//                           },
//                         ),

//                         // Icône micro avec pulsation
//                         ScaleTransition(
//                           scale: _pulseAnimation,
//                           child: Container(
//                             width: 130.w,
//                             height: 130.w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Color(0xFFEC4899).withOpacity(0.2),
//                                   blurRadius: 20,
//                                   spreadRadius: 5,
//                                 ),
//                               ],
//                             ),
//                             // child: Icon(
//                             //   Icons.mic,
//                             //   size: 112.sp,
//                             //   color: Color(0xFFEC4899), // Rose
//                             // ),
//                             child: Center(
//                               child: SvgPicture.asset(
//                                 'assets/images/Icon.svg',
//                                 width: 65.33.w,
//                                 height: 65.33.h,
//                                 // colorFilter: ColorFilter.mode(
//                                 //   Color(0xFFEC4899), // Rose
//                                 //   BlendMode.srcIn,
//                                 // ),
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),

//                     SizedBox(height: 24.h),

//                     // Titre "Listening..."
//                     Text(
//                       'Listening...',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 32.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         // letterSpacing: -0.5,
//                         height: 1.2,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     // Description
//                     Text(
//                       'Boetia analyse votre leçon',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.black, // Gris moyen
//                         height: 1.5,
//                       ),
//                     ),

//                     // Spacer pour pousser les boutons vers le bas
//                     Spacer(flex: 2),

//                     // Bouton "Pause recitation"
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: _togglePause,
//                         borderRadius: BorderRadius.circular(30.r),
//                         child: Container(
//                           width: double.infinity,
//                           height: 56.h,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                               color: Colors.black, // Bordure grise
//                               width: 1.5.w,
//                             ),
//                             borderRadius: BorderRadius.circular(30.r),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.05),
//                                 blurRadius: 10,
//                                 offset: Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 20.w,
//                                 height: 20.w,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Center(
//                                   child: Icon(
//                                     isPaused ? Icons.play_arrow : Icons.pause,
//                                     size: 12.sp,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 8.w),
//                               Text(
//                                 isPaused
//                                     ? 'Resume recitation'
//                                     : 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black, // Gris foncé
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 16.h),

//                     // Bouton "Finish"
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: _finish,
//                         borderRadius: BorderRadius.circular(30.r),
//                         child: Container(
//                           width: double.infinity,
//                           height: 56.h,
//                           decoration: BoxDecoration(
//                             color: Colors.black, // Noir/gris très foncé
//                             borderRadius: BorderRadius.circular(30.r),
//                             // boxShadow: [
//                             //   BoxShadow(
//                             //     color: Colors.black.withOpacity(0.2),
//                             //     blurRadius: 10,
//                             //     offset: Offset(0, 4),
//                             //   ),
//                             // ],
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Finish',
//                               style: TextStyle(
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.white,
//                               ),
//                             ),
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

// // Painter personnalisé pour les ondes sonores
// class SoundWavePainter extends CustomPainter {
//   final double waveProgress;
//   final bool isPaused;

//   SoundWavePainter({required this.waveProgress, required this.isPaused});

//   @override
//   void paint(Canvas canvas, Size size) {
//     if (isPaused) return; // Ne pas dessiner si en pause

//     final center = Offset(size.width / 2, size.height / 2);
//     final paint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2.0;

//     // Dessiner 3 ondes concentriques
//     for (int i = 0; i < 3; i++) {
//       final delay = i * 0.33;
//       final progress = (waveProgress + delay) % 1.0;

//       final radius = 50 + (progress * 50);
//       final opacity = 1.0 - progress;

//       paint.color = Color(0xFFEC4899).withOpacity(opacity * 0.5);

//       canvas.drawCircle(center, radius, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(SoundWavePainter oldDelegate) {
//     return oldDelegate.waveProgress != waveProgress ||
//         oldDelegate.isPaused != isPaused;
//   }
// }

//  -------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ListeningFeedbackScreen extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final int pointsEarned;
//   final int errorsCount;
//   final List<FeedbackError> errors;

//   const ListeningFeedbackScreen({
//     Key? key,
//     this.title = 'Your recitation feedback',
//     this.subtitle = 'This can be a quick description of the lesson',
//     this.pointsEarned = 2,
//     this.errorsCount = 3,
//     this.errors = const [],
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           // Contenu principal avec scroll
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 // Header rose avec informations
//                 Container(
//                   width: double.infinity,
//                   padding: EdgeInsets.fromLTRB(
//                     24.w,
//                     safeAreaTop + 20.h,
//                     24.w,
//                     32.h,
//                   ),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Color(0xFFFFC4E8), // Rose clair
//                         Color(0xFFFFB3E0), // Rose
//                       ],
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(32.r),
//                       bottomRight: Radius.circular(32.r),
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Titre
//                       Text(
//                         title,
//                         style: TextStyle(
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),

//                       SizedBox(height: 8.h),

//                       // Sous-titre
//                       Text(
//                         subtitle,
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Color(0xFF6B6B6B),
//                           height: 1.4,
//                         ),
//                       ),

//                       SizedBox(height: 16.h),

//                       // Badge de points
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 12.w,
//                           vertical: 6.h,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Color(0xFFFFC107), // Jaune
//                           borderRadius: BorderRadius.circular(12.r),
//                         ),
//                         child: Text(
//                           '$pointsEarned points earned!',
//                           style: TextStyle(
//                             fontSize: 13.sp,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 24.h),

//                 // Section des erreurs
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Header des erreurs
//                       Row(
//                         children: [
//                           Container(
//                             width: 24.w,
//                             height: 24.w,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               border: Border.all(
//                                 color: Color(0xFFEF4444), // Rouge
//                                 width: 2.w,
//                               ),
//                             ),
//                             child: Center(
//                               child: Icon(
//                                 Icons.priority_high,
//                                 size: 16.sp,
//                                 color: Color(0xFFEF4444),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 12.w),
//                           Text(
//                             '$errorsCount errors detected',
//                             style: TextStyle(
//                               fontSize: 18.sp,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),

//                       SizedBox(height: 20.h),

//                       // Liste des erreurs
//                       ...errors.map(
//                         (error) => Padding(
//                           padding: EdgeInsets.only(bottom: 16.h),
//                           child: _ErrorCard(error: error),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 // Espace pour le bouton fixe en bas
//                 SizedBox(height: 100.h),
//               ],
//             ),
//           ),

//           // Bouton fermer (X) en haut à droite
//           Positioned(
//             top: safeAreaTop + 12.h,
//             right: 16.w,
//             child: Material(
//               color: Colors.transparent,
//               child: InkWell(
//                 onTap: () => Navigator.pop(context),
//                 borderRadius: BorderRadius.circular(20.r),
//                 child: Container(
//                   width: 40.w,
//                   height: 40.w,
//                   decoration: BoxDecoration(
//                     color: Colors.white.withOpacity(0.3),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Icon(Icons.close, size: 24.sp, color: Colors.black),
//                 ),
//               ),
//             ),
//           ),

//           // Bouton Finish fixe en bas
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               padding: EdgeInsets.fromLTRB(
//                 24.w,
//                 16.h,
//                 24.w,
//                 safeAreaBottom + 16.h,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 10,
//                     offset: Offset(0, -2),
//                   ),
//                 ],
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   onTap: () {},
//                   borderRadius: BorderRadius.circular(30.r),
//                   child: Container(
//                     width: double.infinity,
//                     height: 56.h,
//                     decoration: BoxDecoration(
//                       color: Color(0xFF1F2937), // Noir
//                       borderRadius: BorderRadius.circular(30.r),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Finish',
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
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Widget pour chaque carte d'erreur
// class _ErrorCard extends StatelessWidget {
//   final FeedbackError error;

//   const _ErrorCard({required this.error});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16.r),
//         border: Border.all(
//           color: Color(0xFFE5E7EB), // Gris clair
//           width: 1.w,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.03),
//             blurRadius: 10,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // "You said:"
//           Text(
//             'You said:',
//             style: TextStyle(
//               fontSize: 13.sp,
//               fontWeight: FontWeight.w500,
//               color: Color(0xFF6B7280), // Gris moyen
//             ),
//           ),

//           SizedBox(height: 6.h),

//           // Texte incorrect (rouge et italique)
//           Text(
//             '"${error.userText}"',
//             style: TextStyle(
//               fontSize: 15.sp,
//               fontStyle: FontStyle.italic,
//               color: Color(0xFFEF4444), // Rouge
//               height: 1.4,
//             ),
//           ),

//           SizedBox(height: 12.h),

//           // "Instead, it should've been:"
//           Text(
//             'Instead, it should\'ve been:',
//             style: TextStyle(
//               fontSize: 13.sp,
//               fontWeight: FontWeight.w500,
//               color: Color(0xFF6B7280), // Gris moyen
//             ),
//           ),

//           SizedBox(height: 6.h),

//           // Texte correct (vert et italique)
//           Text(
//             '"${error.correctText}"',
//             style: TextStyle(
//               fontSize: 15.sp,
//               fontStyle: FontStyle.italic,
//               color: Color(0xFF10B981), // Vert
//               height: 1.4,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Modèle de données pour une erreur
// class FeedbackError {
//   final String userText;
//   final String correctText;

//   const FeedbackError({required this.userText, required this.correctText});
// }

// // Exemple d'utilisation avec des données
// class ListeningFeedbackExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListeningFeedbackScreen(
//       title: 'Your recitation feedback',
//       subtitle: 'This can be a quick description of the lesson',
//       pointsEarned: 2,
//       errorsCount: 3,
//       errors: [
//         FeedbackError(
//           userText: 'Bla bla bla bla',
//           correctText: 'Blo blo blo blo blo',
//         ),
//         FeedbackError(
//           userText: 'Bla bla bla bla',
//           correctText: 'Blo blo blo blo blo',
//         ),
//         FeedbackError(
//           userText: 'Bla bla bla bla',
//           correctText: 'Blo blo blo blo blo',
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// /// VERSION DEMO - Test rapide avec 3 erreurs
// class ListeningFeedbackDemoScreen extends StatelessWidget {
//   const ListeningFeedbackDemoScreen({super.key});

//   static final List<FeedbackError> _demoErrors = [
//     FeedbackError(
//       userText: 'Bla bla bla bla',
//       correctText: 'Blo blo blo blo blo',
//     ),
//     FeedbackError(
//       userText: 'Bla bla bla bla',
//       correctText: 'Blo blo blo blo blo',
//     ),
//     FeedbackError(
//       userText: 'Bla bla bla bla',
//       correctText: 'Blo blo blo blo blo',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListeningFeedbackScreen(
//       title: 'Your recitation feedback',
//       subtitle: 'This can be a quick description of the lesson',
//       pointsEarned: 2,
//       errorsCount: 3,
//       errors: _demoErrors,
//     );
//   }
// }

// /// VERSION SCROLL TEST - Test avec 15 erreurs
// class ListeningFeedbackScrollTestScreen extends StatelessWidget {
//   const ListeningFeedbackScrollTestScreen({Key? key}) : super(key: key);

//   static final List<FeedbackError> _manyErrors = List.generate(
//     15,
//     (index) => FeedbackError(
//       userText: 'Error ${index + 1}: Bla bla bla bla',
//       correctText: 'Correction ${index + 1}: Blo blo blo blo blo',
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return ListeningFeedbackScreen(
//       title: 'Your recitation feedback',
//       subtitle: 'Scroll test with 15 errors',
//       pointsEarned: 5,
//       errorsCount: 15,
//       errors: _manyErrors,
//     );
//   }
// }

// /// WIDGET PRINCIPAL - Header fixe + Cartes scrollables
// class ListeningFeedbackScreen extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final int pointsEarned;
//   final int errorsCount;
//   final List<FeedbackError> errors;

//   const ListeningFeedbackScreen({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.pointsEarned,
//     required this.errorsCount,
//     required this.errors,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ===== HEADER ROSE FIXE AVEC X EN HAUT =====
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.fromLTRB(24.w, safeAreaTop + 24.h, 16.w, 24.h),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   Color(0xFFFFC4E8), // Rose clair
//                   Color(0xFFFFB3E0), // Rose
//                 ],
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(32.r),
//                 bottomRight: Radius.circular(32.r),
//               ),
//               // Shadow en bas du header
//               boxShadow: [
//                 BoxShadow(
//                   color: Color(0xFFFFB3E0).withOpacity(0.3),
//                   blurRadius: 20,
//                   offset: Offset(0, 8),
//                   spreadRadius: 0,
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Row avec X aligné à droite
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: () => {},
//                         borderRadius: BorderRadius.circular(20.r),
//                         child: Icon(
//                           Icons.close,
//                           size: 20.sp,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 12.h),

//                 // Titre
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // Sous-titre
//                 Text(
//                   subtitle,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: Color(0xFF6B6B6B),
//                     height: 1.4,
//                   ),
//                 ),

//                 SizedBox(height: 16.h),

//                 // Badge de points
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 12.w,
//                     vertical: 6.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Color(0xFFFFC107), // Jaune
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Text(
//                     '$pointsEarned points earned!',
//                     style: TextStyle(
//                       fontSize: 13.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // ===== HEADER DES ERREURS FIXE =====
//           Padding(
//             padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 20.h),
//             child: Row(
//               children: [
//                 Container(
//                   width: 24.w,
//                   height: 24.w,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Color(0xFFEF4444), // Rouge
//                       width: 2.w,
//                     ),
//                   ),
//                   child: Center(
//                     child: Icon(
//                       Icons.priority_high,
//                       size: 16.sp,
//                       color: Color(0xFFEF4444),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 12.w),
//                 Text(
//                   '$errorsCount errors detected',
//                   style: TextStyle(
//                     fontSize: 18.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // ===== CONTENU SCROLLABLE (SEULEMENT LES CARTES) =====
//           Expanded(
//             child: SingleChildScrollView(
//               physics: AlwaysScrollableScrollPhysics(),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w),
//                 child: Column(
//                   children: [
//                     // Liste des cartes d'erreur
//                     if (errors.isNotEmpty)
//                       ...List.generate(errors.length, (index) {
//                         return Padding(
//                           padding: EdgeInsets.only(bottom: 16.h),
//                           child: _ErrorCard(error: errors[index], index: index),
//                         );
//                       })
//                     else
//                       // Message si aucune erreur
//                       Container(
//                         padding: EdgeInsets.all(24.w),
//                         decoration: BoxDecoration(
//                           color: Color(0xFFF0FDF4),
//                           borderRadius: BorderRadius.circular(16.r),
//                         ),
//                         child: Column(
//                           children: [
//                             Icon(
//                               Icons.check_circle,
//                               size: 48.sp,
//                               color: Color(0xFF10B981),
//                             ),
//                             SizedBox(height: 12.h),
//                             Text(
//                               'Perfect! No errors detected',
//                               style: TextStyle(
//                                 fontSize: 18.sp,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF10B981),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                     // Espace pour le bouton fixe en bas
//                     // SizedBox(height: 100.h),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // ===== BOUTON FINISH FIXE EN BAS =====
//           Container(
//             padding: EdgeInsets.fromLTRB(
//               32.w,
//               20.h,
//               32.w,
//               safeAreaBottom + 50.h,
//             ),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 // BoxShadow(
//                 //   color: Colors.black.withOpacity(0.1),
//                 //   blurRadius: 10,
//                 //   offset: Offset(0, -2),
//                 // ),
//               ],
//             ),
//             child: Material(
//               color: Colors.transparent,
//               child: InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(30.r),
//                 child: Container(
//                   width: double.infinity,
//                   height: 56.h,
//                   decoration: BoxDecoration(
//                     color: Colors.black, // Noir
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Finish',
//                       style: TextStyle(
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

// /// WIDGET CARTE D'ERREUR
// class _ErrorCard extends StatelessWidget {
//   final FeedbackError error;
//   final int index;

//   const _ErrorCard({required this.error, this.index = 0});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16.r),
//         border: Border.all(
//           color: Color(0xFFE5E7EB), // Gris clair
//           width: 1.w,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.03),
//             blurRadius: 10,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // "You said:"
//           Text(
//             'You said:',
//             style: TextStyle(
//               fontSize: 13.sp,
//               fontWeight: FontWeight.w500,
//               color: Color(0xFF6B7280), // Gris moyen
//             ),
//           ),

//           SizedBox(height: 6.h),

//           // Texte incorrect (rouge et italique)
//           Text(
//             '"${error.userText}"',
//             style: TextStyle(
//               fontSize: 15.sp,
//               fontStyle: FontStyle.italic,
//               color: Color(0xFFEF4444), // Rouge
//               height: 1.4,
//             ),
//           ),

//           SizedBox(height: 12.h),

//           // "Instead, it should've been:"
//           Text(
//             'Instead, it should\'ve been:',
//             style: TextStyle(
//               fontSize: 13.sp,
//               fontWeight: FontWeight.w500,
//               color: Color(0xFF6B7280), // Gris moyen
//             ),
//           ),

//           SizedBox(height: 6.h),

//           // Texte correct (vert et italique)
//           Text(
//             '"${error.correctText}"',
//             style: TextStyle(
//               fontSize: 15.sp,
//               fontStyle: FontStyle.italic,
//               color: Color(0xFF10B981), // Vert
//               height: 1.4,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// /// MODÈLE DE DONNÉES
// class FeedbackError {
//   final String userText;
//   final String correctText;

//   const FeedbackError({required this.userText, required this.correctText});
// }

// ----------------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// /// Page de détails d'une leçon - Design exact de l'image avec contenu fixe
// class LessonPageScreen extends StatelessWidget {
//   final String lessonTitle;
//   final String lessonDescription;
//   final int pointsEarned;
//   final String? lessonImagePath; // Optionnel

//   // Callbacks pour les cartes clickables
//   final VoidCallback? onCheatSheetsPressed;
//   final VoidCallback? onQuizPressed;
//   final VoidCallback? onRecitationPressed;

//   const LessonPageScreen({
//     Key? key,
//     this.lessonTitle = 'Your lesson 1',
//     this.lessonDescription = 'This can be a quick description of the lesson',
//     this.pointsEarned = 2,
//     this.lessonImagePath,
//     this.onCheatSheetsPressed,
//     this.onQuizPressed,
//     this.onRecitationPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final safeAreaTop = MediaQuery.of(context).padding.top;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ===== HEADER ROSE AVEC DÉGRADÉ =====
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.fromLTRB(16.w, safeAreaTop + 12.h, 16.w, 32.h),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   Color(0xFFFFC4E8), // Rose clair
//                   Color(0xFFFFB3E0), // Rose
//                 ],
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(32.r),
//                 bottomRight: Radius.circular(32.r),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Bouton retour
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                     width: 40.w,
//                     height: 40.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(12.r),
//                     ),
//                     child: Icon(
//                       Icons.arrow_back_ios_new,
//                       size: 18.sp,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 24.h),

//                 // Contenu du header avec image
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Textes à gauche
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Titre
//                           Text(
//                             lessonTitle,
//                             style: TextStyle(
//                               fontSize: 24.sp,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               height: 1.2,
//                             ),
//                           ),

//                           SizedBox(height: 8.h),

//                           // Description
//                           Text(
//                             lessonDescription,
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               color: Color(0xFF6B6B6B),
//                               height: 1.4,
//                             ),
//                           ),

//                           SizedBox(height: 16.h),

//                           // Badge points
//                           Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 12.w,
//                               vertical: 6.h,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Color(0xFFFFC107), // Jaune
//                               borderRadius: BorderRadius.circular(12.r),
//                             ),
//                             child: Text(
//                               '$pointsEarned points earned!',
//                               style: TextStyle(
//                                 fontSize: 13.sp,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     SizedBox(width: 16.w),

//                     // Image de la leçon à droite
//                     Container(
//                       width: 80.w,
//                       height: 80.w,
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.3),
//                         borderRadius: BorderRadius.circular(12.r),
//                       ),
//                       child: lessonImagePath != null
//                           ? ClipRRect(
//                               borderRadius: BorderRadius.circular(12.r),
//                               child: Image.asset(
//                                 lessonImagePath!,
//                                 fit: BoxFit.cover,
//                               ),
//                             )
//                           : Icon(
//                               Icons.book,
//                               size: 40.sp,
//                               color: Colors.white.withOpacity(0.7),
//                             ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           // ===== CONTENU FIXE (SANS SCROLL) =====
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(20.w),
//               child: Column(
//                 children: [
//                   // Carte 1 : Cheat sheets
//                   _LessonCard(
//                     icon: Icons.menu_book_rounded,
//                     iconColor: Color(0xFFEC4899), // Rose
//                     title: 'Cheat sheets',
//                     description:
//                         'Learn your lesson in a very easy, fun and interactive way!',
//                     onTap:
//                         onCheatSheetsPressed ??
//                         () {
//                           debugPrint('Cheat sheets pressed');
//                         },
//                   ),

//                   SizedBox(height: 16.h),

//                   // Carte 2 : Test your knowledge
//                   _LessonCard(
//                     icon: Icons.star_outline_rounded,
//                     iconColor: Color(0xFFEC4899), // Rose
//                     title: 'Test your knowledge!',
//                     description:
//                         'How much do you know? Take the tests and see how much you\'ve learned!',
//                     onTap:
//                         onQuizPressed ??
//                         () {
//                           debugPrint('Quiz pressed');
//                         },
//                   ),

//                   SizedBox(height: 16.h),

//                   // Carte 3 : Récitation guidée
//                   _LessonCard(
//                     icon: Icons.record_voice_over_rounded,
//                     iconColor: Color(0xFFEC4899), // Rose
//                     title: 'Récitation guidée',
//                     description:
//                         'Analyse et corrige une récitation de your lesson',
//                     onTap:
//                         onRecitationPressed ??
//                         () {
//                           debugPrint('Recitation pressed');
//                         },
//                   ),

//                   // Spacer pour pousser la mascotte vers le bas
//                   Spacer(),

//                   // Mascotte rose souriante (image)
//                   Image.asset(
//                     "assets/images/Group1.png",
//                     width: 136.56.w,
//                     height: 136.56.h,
//                     fit: BoxFit.contain,
//                   ),

//                   SizedBox(height: 20.h),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// /// Widget réutilisable pour les cartes de leçon
// class _LessonCard extends StatelessWidget {
//   final IconData icon;
//   final Color iconColor;
//   final String title;
//   final String description;
//   final VoidCallback onTap;

//   const _LessonCard({
//     required this.icon,
//     required this.iconColor,
//     required this.title,
//     required this.description,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: onTap,
//         borderRadius: BorderRadius.circular(16.r),
//         child: Container(
//           width: double.infinity,
//           padding: EdgeInsets.all(16.w),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16.r),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.05),
//                 blurRadius: 10,
//                 offset: Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               // Icône
//               Container(
//                 width: 48.w,
//                 height: 48.w,
//                 decoration: BoxDecoration(
//                   color: iconColor.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 child: Icon(icon, size: 28.sp, color: iconColor),
//               ),

//               SizedBox(width: 16.w),

//               // Textes
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: TextStyle(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.2,
//                       ),
//                     ),
//                     SizedBox(height: 4.h),
//                     Text(
//                       description,
//                       style: TextStyle(
//                         fontSize: 13.sp,
//                         color: Color(0xFF6B7280),
//                         height: 1.4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(width: 8.w),

//               // Flèche
//               Icon(Icons.chevron_right, size: 24.sp, color: Color(0xFFD1D5DB)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
