//  ========================================= Dictation 9 ==========================================

// import 'package:flutter/material.dart';
// import 'design.dart';

// class DictationPage extends StatefulWidget {
//   const DictationPage({super.key});

//   @override
//   State<DictationPage> createState() => _DictationPageState();
// }

// class _DictationPageState extends State<DictationPage> {
//   bool isLoading = false;
//   int currentPage = 0;

//   final String dictationText =
//       """This can be a quick description of the lesson. This can be a quick description of the lesson. This can be a quick description of the lesson. This can be a quick description of the lesson.

// This can be a quick description of the lesson. This can be a quick description of the lesson.

// This can be a quick description of the lesson. This can be a quick description of the lesson.

// This can be a quick description of the lesson. This can be a quick description of the lesson.""";

//   Future<void> _onGenerateAnother() async {

//   }

//   Future<void> _onCorrectDictation() async {

//   }

//   void _onClose() {
//     // context.pop();
//   }

//   void _onPageChanged(int index) {
//     setState(() {
//       currentPage = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DictationDesign(
//       dictationText: dictationText,
//       currentPage: currentPage,
//       isLoading: isLoading,
//       onGenerateAnother: _onGenerateAnother,
//       onCorrectDictation: _onCorrectDictation,
//       onClose: _onClose,
//       onPageChanged: _onPageChanged,
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'design.dart';

// class DictationPage extends StatefulWidget {
//   const DictationPage({super.key});

//   @override
//   State<DictationPage> createState() => _DictationPageState();
// }

// class _DictationPageState extends State<DictationPage> {
//   bool isLoading = false;
//   int currentPage = 0;

//   // === Trois dictations différentes ===
//   final String dictationText1 = """
// Frogs are small animals that can jump very high. They live near water and eat insects.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
//   """;

//   final String dictationText2 = """
// The sun rises in the east and sets in the west.
// It gives us light and warmth. Without the sun, plants cannot grow, and we would not have life on Earth.
//   """;

//   final String dictationText3 = """
// My favorite season is spring. The flowers bloom, the weather is pleasant,
// and birds start to sing again. It’s a time for new beginnings and fresh air.
//   """;

//   Future<void> _onGenerateAnother() async {
//     setState(() => isLoading = true);
//     await Future.delayed(Duration(seconds: 1));
//     setState(() => isLoading = false);
//   }

//   Future<void> _onCorrectDictation() async {
//     setState(() => isLoading = true);
//     await Future.delayed(Duration(seconds: 2));
//     setState(() => isLoading = false);
//   }

//   void _onClose() {
//     Navigator.of(context).pop();
//   }

//   void _onPageChanged(int index) {
//     setState(() {
//       currentPage = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Liste de toutes les dictations
//     final List<String> dictations = [
//       dictationText1,
//       dictationText2,
//       dictationText3,
//     ];

//     return DictationDesign(
//       dictations: dictations,
//       currentPage: currentPage,
//       isLoading: isLoading,
//       onGenerateAnother: _onGenerateAnother,
//       onCorrectDictation: _onCorrectDictation,
//       onClose: _onClose,
//       onPageChanged: _onPageChanged,
//     );
//   }
// }

//  ========================================= Dictation 9 V2 ==========================================

// import 'package:flutter/material.dart';
// import 'design.dart';

// class DictationPage extends StatefulWidget {
//   const DictationPage({super.key});

//   @override
//   State<DictationPage> createState() => _DictationPageState();
// }

// class _DictationPageState extends State<DictationPage> {
//   bool isLoading = false;
//   int currentPage = 0;

//   // === Trois dictations différentes ===
//   final String dictationText1 = """
// Frogs are small animals that can jump very high. They live near water and eat insects.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
// Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
//   """;

//   final String dictationText2 = """
// The sun rises in the east and sets in the west.
// It gives us light and warmth. Without the sun, plants cannot grow, and we would not have life on Earth.
//   """;

//   final String dictationText3 = """
// My favorite season is spring. The flowers bloom, the weather is pleasant,
// and birds start to sing again. It’s a time for new beginnings and fresh air.
//   """;

//   // === Fonction : Générer une autre dictée ===
//   Future<void> _onGenerateAnother() async {
//     setState(() => isLoading = true);
//     await Future.delayed(const Duration(seconds: 1));
//     setState(() => isLoading = false);
//   }

//   // === Fonction : Corriger la dictée ===
//   Future<void> _onCorrectDictation() async {
//     setState(() => isLoading = true);
//     await Future.delayed(const Duration(seconds: 2));
//     setState(() => isLoading = false);
//   }

//   // === Fonction : Fermer la page ===
//   void _onClose() {
//     Navigator.of(context).pop();
//   }

//   // === Fonction : Changement de page ===
//   void _onPageChanged(int index) {
//     setState(() {
//       currentPage = index;
//     });
//   }

//   // === 🔊 Fonction : Démarrer la lecture audio ===
//   void _onStartAudio(int index) {
//     // TODO: Lecture audio pour la dictée numéro "index"
//     print("▶️ Lecture audio commencée pour Dictation ${index + 1}");
//   }

//   // === ⏹️ Fonction : Arrêter la lecture audio ===
//   void _onStopAudio(int index) {
//     // TODO: Arrêter la lecture audio pour la dictée numéro "index"
//     print("⏹️ Lecture audio arrêtée pour Dictation ${index + 1}");
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Liste de toutes les dictations
//     final List<String> dictations = [
//       dictationText1,
//       dictationText2,
//       dictationText3,
//     ];

//     return DictationDesign(
//       dictations: dictations,
//       currentPage: currentPage,
//       isLoading: isLoading,
//       onGenerateAnother: _onGenerateAnother,
//       onCorrectDictation: _onCorrectDictation,
//       onClose: _onClose,
//       onPageChanged: _onPageChanged,

//       // // 🔊 On passe les callbacks audio au design
//       // onStartAudio: _onStartAudio,
//       // onStopAudio: _onStopAudio,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'design.dart';

class DictationPage extends StatefulWidget {
  const DictationPage({super.key});

  @override
  State<DictationPage> createState() => _DictationPageState();
}

class _DictationPageState extends State<DictationPage> {
  bool isLoading = false;
  int currentPage = 0;

  // === Trois dictations différentes ===
  final String dictationText1 = """
Frogs are small animals that can jump very high. They live near water and eat insects. Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
Frogs are small animals that can jump very high. They live near water and eat insects. Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
Frogs are small animals that can jump very high. They live near water and eat insects. Frogs have smooth skin and long legs. When it rains, you can often hear them croaking.
  """;

  final String dictationText2 = """
The sun rises in the east and sets in the west. It gives us light and warmth. Without the sun, plants cannot grow, and we would not have life on Earth.
  """;

  final String dictationText3 = """
My favorite season is spring. The flowers bloom, the weather is pleasant, and birds start to sing again. It's a time for new beginnings and fresh air.
  """;

  // === Fonction : Générer une autre dictée ===
  Future<void> _onGenerateAnother() async {
    setState(() => isLoading = true);
    await Future.delayed(const Duration(seconds: 1));
    setState(() => isLoading = false);
  }

  // === Fonction : Corriger la dictée ===
  Future<void> _onCorrectDictation() async {
    setState(() => isLoading = true);
    await Future.delayed(const Duration(seconds: 2));
    setState(() => isLoading = false);
  }

  // === Fonction : Fermer la page ===
  void _onClose() {
    Navigator.of(context).pop();
  }

  // === Fonction : Changement de page ===
  void _onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  // === 🔊 Fonction : Démarrer la lecture audio ===
  void _onStartAudio(int index) {
    // TODO: Lecture audio pour la dictée numéro "index"
    print("▶️ Lecture audio commencée pour Dictation ${index + 1}");
  }

  // === ⏹️ Fonction : Arrêter la lecture audio ===
  void _onStopAudio(int index) {
    // TODO: Arrêter la lecture audio pour la dictée numéro "index"
    print("⏹️ Lecture audio arrêtée pour Dictation ${index + 1}");
  }

  @override
  Widget build(BuildContext context) {
    // Liste de toutes les dictations
    final List<String> dictations = [
      dictationText1,
      dictationText2,
      dictationText3,
    ];

    return DictationDesign(
      dictations: dictations,
      currentPage: currentPage,
      isLoading: isLoading,
      onGenerateAnother: _onGenerateAnother,
      onCorrectDictation: _onCorrectDictation,
      onClose: _onClose,
      onPageChanged: _onPageChanged,
      // // 🔊 On passe les callbacks audio au design
      // onStartAudio: _onStartAudio,
      // onStopAudio: _onStopAudio,
    );
  }
}
