// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class WhatsYourNamePage extends StatefulWidget {
//   const WhatsYourNamePage({super.key});

//   @override
//   State<WhatsYourNamePage> createState() => _WhatsYourNamePageState();
// }

// class _WhatsYourNamePageState extends State<WhatsYourNamePage> {
//   final TextEditingController _nameController = TextEditingController();

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
//             image: AssetImage('assets/images/yellow_background.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(32.w, 0.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Spacer(),

//                 // === Titre ===
//                 Text(
//                   'Quel est votre prénom?',
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Label "Nom" ===
//                 Text(
//                   'Nom',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     // fontWeight: FontWeight.w500,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // === TextField ===
//                 TextField(
//                   controller: _nameController,
//                   style: TextStyle(fontSize: 16.sp, color: Colors.black),
//                   decoration: InputDecoration(
//                     hintText: 'Anas',
//                     hintStyle: TextStyle(
//                       fontSize: 16.sp,
//                       color: Color(0xFF999999),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white,
//                     contentPadding: EdgeInsets.symmetric(
//                       horizontal: 16.w,
//                       vertical: 12.h,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: BorderSide(
//                         color: Color(0xFF999999),
//                         width: 1.w,
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: BorderSide(
//                         color: Color(0xFF999999),
//                         width: 1.w,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: BorderSide(color: Colors.black, width: 1.w),
//                     ),
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

// -------------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' show Platform;

class KidsDateOfBirthPage extends StatefulWidget {
  const KidsDateOfBirthPage({super.key});

  @override
  State<KidsDateOfBirthPage> createState() => _KidsDateOfBirthPageState();
}

class _KidsDateOfBirthPageState extends State<KidsDateOfBirthPage> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  // DatePicker pour Android (Material Design)
  Future<void> _selectDateAndroid(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime(2015, 3, 13),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.black,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text =
            '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
      });
    }
  }

  // DatePicker pour iOS (Cupertino Design)
  Future<void> _selectDateIOS(BuildContext context) async {
    DateTime tempDate = _selectedDate ?? DateTime(2015, 3, 13);

    await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300.h,
          color: Colors.white,
          child: Column(
            children: [
              // Barre d'actions
              Container(
                height: 50.h,
                color: Colors.grey[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red, fontSize: 16.sp),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoButton(
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedDate = tempDate;
                          _dateController.text =
                              '${tempDate.day.toString().padLeft(2, '0')}/${tempDate.month.toString().padLeft(2, '0')}/${tempDate.year}';
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              // DatePicker
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: tempDate,
                  minimumDate: DateTime(2000),
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime newDate) {
                    tempDate = newDate;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Fonction qui détecte la plateforme et appelle le bon DatePicker
  Future<void> _selectDate(BuildContext context) async {
    if (Platform.isIOS) {
      await _selectDateIOS(context);
    } else {
      await _selectDateAndroid(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final safeAreaTop = MediaQuery.of(context).padding.top;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/yellow_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(32.w, 0.h, 32.w, 54.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),

                // === Titre ===
                Text(
                  'Kids\' date of birth',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),

                SizedBox(height: 32.h),

                // === Label "Date of birth" ===
                Text(
                  'Date of birth',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),

                SizedBox(height: 8.h),

                // === TextField Date ===
                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: AbsorbPointer(
                    child: TextField(
                      controller: _dateController,
                      style: TextStyle(fontSize: 16.sp, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: '13/03/2015',
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xFF999999),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 12.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: Color(0xFF999999),
                            width: 1.w,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: Color(0xFF999999),
                            width: 1.w,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Spacer(),

                // === Bouton "Continue" ===
                SizedBox(
                  width: double.infinity,
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action continuer
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// class KidsNamePage extends StatefulWidget {
//   const KidsNamePage({super.key});

//   @override
//   State<KidsNamePage> createState() => _KidsNamePageState();
// }

// class _KidsNamePageState extends State<KidsNamePage> {
//   final TextEditingController _nameController = TextEditingController();
//   File? _selectedImage;
//   final ImagePicker _picker = ImagePicker();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }

//   Future<void> _pickImage() async {
//     final XFile? image = await _picker.pickImage(
//       source: ImageSource.gallery,
//       maxWidth: 512,
//       maxHeight: 512,
//       imageQuality: 85,
//     );

//     if (image != null) {
//       setState(() {
//         _selectedImage = File(image.path);
//       });
//     }
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
//             padding: EdgeInsets.fromLTRB(32.w, 0.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Spacer(),

//                 // === Avatar ===
//                 Center(
//                   child: Stack(
//                     children: [
//                       Container(
//                         width: 100.w,
//                         height: 100.h,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFE5E7EB),
//                           borderRadius: BorderRadius.circular(20.r),
//                         ),
//                         child: _selectedImage != null
//                             ? ClipRRect(
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 child: Image.file(
//                                   _selectedImage!,
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                             : ClipRRect(
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 child: Image.asset(
//                                   'assets/images/default_avatar.png',
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                       ),
//                       // Bouton d'édition
//                       Positioned(
//                         bottom: 0,
//                         right: 0,
//                         child: GestureDetector(
//                           onTap: _pickImage,
//                           child: Container(
//                             width: 32.w,
//                             height: 32.h,
//                             decoration: BoxDecoration(
//                               color: Colors.black,
//                               shape: BoxShape.circle,
//                             ),
//                             child: Icon(
//                               Icons.edit,
//                               color: Colors.white,
//                               size: 16.sp,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Titre ===
//                 Text(
//                   'Quel est le prénom de votre enfant?',
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Label "Nom d'enfant" ===
//                 Text(
//                   'Nom d\'enfant',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // === TextField ===
//                 TextField(
//                   controller: _nameController,
//                   style: TextStyle(fontSize: 16.sp, color: Colors.black),
//                   decoration: InputDecoration(
//                     hintText: 'Adam',
//                     hintStyle: TextStyle(
//                       fontSize: 16.sp,
//                       color: Color(0xFF999999),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white,
//                     contentPadding: EdgeInsets.symmetric(
//                       horizontal: 16.w,
//                       vertical: 12.h,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: BorderSide(
//                         color: Color(0xFF999999),
//                         width: 1.w,
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: BorderSide(
//                         color: Color(0xFF999999),
//                         width: 1.w,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: BorderSide(color: Colors.black, width: 1.w),
//                     ),
//                   ),
//                 ),

//                 Spacer(flex: 2),

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

// ------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class KidsGenderPage extends StatefulWidget {
//   const KidsGenderPage({super.key});

//   @override
//   State<KidsGenderPage> createState() => _KidsGenderPageState();
// }

// class _KidsGenderPageState extends State<KidsGenderPage> {
//   String? _selectedGender;

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
//             padding: EdgeInsets.fromLTRB(32.w, 100.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Spacer(),

//                 // === Titre ===
//                 Text(
//                   'Quel est le genre de votre enfant?',
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Bouton "Un garçon" ===
//                 _buildGenderButton(label: 'Un garçon', value: 'boy'),

//                 SizedBox(height: 16.h),

//                 // === Bouton "Une fille" ===
//                 _buildGenderButton(label: 'Une fille', value: 'girl'),

//                 SizedBox(height: 16.h),

//                 // === Bouton "Je ne le comminique pas" ===
//                 _buildGenderButton(
//                   label: 'Je ne le comminique pas',
//                   value: 'prefer_not_to_say',
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

//   Widget _buildGenderButton({required String label, required String value}) {
//     final bool isSelected = _selectedGender == value;

//     return SizedBox(
//       width: double.infinity,
//       height: 56.h,
//       child: OutlinedButton(
//         onPressed: () {
//           setState(() {
//             _selectedGender = value;
//           });
//         },
//         style: OutlinedButton.styleFrom(
//           backgroundColor: Colors.transparent,
//           side: isSelected
//               ? BorderSide(color: Colors.black, width: 3.w)
//               : BorderSide(color: Colors.black, width: 1.w),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.r),
//           ),
//         ),
//         child: Text(
//           label,
//           style: TextStyle(
//             fontSize: 16.sp,
//             // fontWeight: FontWeight.w500,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class LanguageSelectionPage extends StatefulWidget {
//   const LanguageSelectionPage({super.key});

//   @override
//   State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
// }

// class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
//   String? _selectedLanguage;

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
//             padding: EdgeInsets.fromLTRB(32.w, 100.h, 32.w, 54.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Spacer(),

//                 // === Titre ===
//                 Text(
//                   'Sélectionnez votre langue',
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 32.h),

//                 // === Bouton "Française" ===
//                 _buildLanguageButton(label: 'Française', value: 'fr'),

//                 SizedBox(height: 16.h),

//                 // === Bouton "Anglais" ===
//                 _buildLanguageButton(label: 'Anglais', value: 'en'),

//                 SizedBox(height: 16.h),

//                 // === Bouton "Espagnol" ===
//                 _buildLanguageButton(label: 'Espagnol', value: 'es'),

//                 SizedBox(height: 16.h),

//                 // === Bouton "Portugais" ===
//                 _buildLanguageButton(label: 'Portugais', value: 'pt'),

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

//   Widget _buildLanguageButton({required String label, required String value}) {
//     final bool isSelected = _selectedLanguage == value;

//     return SizedBox(
//       width: double.infinity,
//       height: 56.h,
//       child: OutlinedButton(
//         onPressed: () {
//           setState(() {
//             _selectedLanguage = value;
//           });
//         },
//         style: OutlinedButton.styleFrom(
//           backgroundColor: Colors.transparent,
//           side: isSelected
//               ? BorderSide(color: Colors.black, width: 3.w)
//               : BorderSide(color: Colors.black, width: 1.w),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.r),
//           ),
//         ),
//         child: Text(
//           label,
//           style: TextStyle(fontSize: 16.sp, color: Colors.black),
//         ),
//       ),
//     );
//   }
// }

// ------------------------------------------------------------------------------------

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
//                 SizedBox(
//                   width: double.infinity,
//                   height: 170.h,
//                   child: Center(
//                     child: ListWheelScrollView.useDelegate(
//                       controller: _controller,
//                       itemExtent: 74.h,
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
//                                         width: 3.w,
//                                       )
//                                     : null,
//                               ),
//                               child: Center(
//                                 child: Transform.scale(
//                                   scale: scale,
//                                   child: Text(
//                                     classes[index],
//                                     style: TextStyle(
//                                       fontSize: isSelected ? 32.sp : 24.sp,
//                                       fontWeight: isSelected
//                                           ? FontWeight.w600
//                                           : FontWeight.w600,
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
