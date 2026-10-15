// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
//           child: Column(
//             children: [
//               // Carte 1: Learn and practise (Rose)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFFF8BBD0),
//                 title: 'Learn and practise',
//                 description:
//                     'Cheat sheets, recitation\nhelper and quiz generator',
//                 svgPath: 'assets/images/illustrations/happy_face_pink.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 16.h),

//               // Carte 2: Correcteur de devoirs (Jaune)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFFFDD835),
//                 title: 'Correcteur de devoirs',
//                 description: 'Vérifie et corrige tous types\nd\'exercices',
//                 svgPath: 'assets/images/illustrations/pencil_orange.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 16.h),

//               // Carte 3: Dictée intelligente (Vert)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFF4DD0A4),
//                 title: 'Dictée intelligente',
//                 description: 'Crée une dictée à partir d\'un\nthème ou de mots',
//                 svgPath: 'assets/images/illustrations/infinity_green.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 24.h),

//               // Carte 4: Question
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(24.w),
//                 decoration: BoxDecoration(
//                   color: Color(0xFFF5F5F5),
//                   borderRadius: BorderRadius.circular(24.r),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.05),
//                       blurRadius: 10,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Votre enfant vous a\nposé une question?',
//                           style: TextStyle(
//                             fontSize: 22.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                             height: 1.2,
//                           ),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           'Nous avons la réponse adaptée',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black54,
//                             height: 1.4,
//                           ),
//                         ),
//                         SizedBox(height: 20.h),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 24.w,
//                               vertical: 14.h,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 'Posez votre question',
//                                 style: TextStyle(
//                                   fontSize: 15.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               SizedBox(width: 8.w),
//                               Icon(
//                                 Icons.arrow_forward,
//                                 size: 18.sp,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Illustration jaune à droite
//                     Positioned(
//                       right: -10.w,
//                       bottom: -10.h,
//                       child: SvgPicture.asset(
//                         'assets/images/illustrations/star_yellow.svg',
//                         width: 140.w,
//                         height: 140.w,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20.h),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFeatureCard({
//     required Color backgroundColor,
//     required String title,
//     required String description,
//     required String svgPath,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(24.r),
//       child: Container(
//         width: double.infinity,
//         height: 150.h,
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.circular(24.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.08),
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             // Texte à gauche
//             Positioned(
//               left: 24.w,
//               top: 24.h,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 22.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                       height: 1.2,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.black87,
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Illustration SVG à droite
//             Positioned(
//               right: 20.w,
//               top: 0,
//               bottom: 0,
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 120.w,
//                   height: 120.w,
//                   fit: BoxFit.contain,
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
// import 'package:flutter_svg/flutter_svg.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
//           child: Column(
//             children: [
//               // Carte 1: Learn and practise (Rose)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFFF8BBD0),
//                 title: 'Learn and practise',
//                 description:
//                     'Cheat sheets, recitation\nhelper and quiz generator',
//                 backgroundImagePath:
//                     'assets/images/cardbackground/CardPink.png',
//                 svgPath: 'assets/images/illustrations/happy_face_pink.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 16.h),

//               // Carte 2: Correcteur de devoirs (Jaune)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFFFDD835),
//                 title: 'Correcteur de devoirs',
//                 description: 'Vérifie et corrige tous types\nd\'exercices',
//                 backgroundImagePath:
//                     'assets/images/cardbackground/CardYellow.png',
//                 svgPath: 'assets/images/illustrations/pencil_orange.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 16.h),

//               // Carte 3: Dictée intelligente (Vert)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFF4DD0A4),
//                 title: 'Dictée intelligente',
//                 description: 'Crée une dictée à partir d\'un\nthème ou de mots',
//                 backgroundImagePath:
//                     'assets/images/cardbackground/CardGreen.png',
//                 svgPath: 'assets/images/illustrations/infinity_green.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 24.h),

//               // Carte 4: Question
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(24.w),
//                 decoration: BoxDecoration(
//                   color: Color(0xFFF5F5F5),
//                   borderRadius: BorderRadius.circular(24.r),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.05),
//                       blurRadius: 10,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Votre enfant vous a\nposé une question?',
//                           style: TextStyle(
//                             fontSize: 22.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                             height: 1.2,
//                           ),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           'Nous avons la réponse adaptée',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black54,
//                             height: 1.4,
//                           ),
//                         ),
//                         SizedBox(height: 20.h),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 24.w,
//                               vertical: 14.h,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 'Posez votre question',
//                                 style: TextStyle(
//                                   fontSize: 15.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               SizedBox(width: 8.w),
//                               Icon(
//                                 Icons.arrow_forward,
//                                 size: 18.sp,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Illustration jaune à droite
//                     Positioned(
//                       right: -10.w,
//                       bottom: -10.h,
//                       child: SvgPicture.asset(
//                         'assets/images/illustrations/star_yellow.svg',
//                         width: 140.w,
//                         height: 140.w,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20.h),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFeatureCard({
//     required Color backgroundColor,
//     required String title,
//     required String description,
//     required String svgPath,
//     required String backgroundImagePath,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(24.r),
//       child: Container(
//         width: double.infinity,
//         height: 150.h,
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.circular(24.r),
//           image: DecorationImage(
//             image: AssetImage(backgroundImagePath),
//             fit: BoxFit.cover,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.08),
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             // Texte à gauche
//             Positioned(
//               left: 24.w,
//               top: 24.h,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 22.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                       height: 1.2,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.black87,
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Illustration SVG à droite
//             Positioned(
//               right: 20.w,
//               top: 0,
//               bottom: 0,
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 120.w,
//                   height: 120.w,
//                   fit: BoxFit.contain,
//                 ),
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
// import 'package:flutter_svg/flutter_svg.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
//           child: Column(
//             children: [
//               // Carte 1: Learn and practise (Rose)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFFF8BBD0),
//                 title: 'Learn and practise',
//                 description:
//                     'Cheat sheets, recitation\nhelper and quiz generator',
//                 backgroundImagePath: 'assets/images/background/CardPink.png',
//                 svgPath: 'assets/images/logos/CardPink.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 16.h),

//               // Carte 2: Correcteur de devoirs (Jaune)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFFFDD835),
//                 title: 'Correcteur de devoirs',
//                 description: 'Vérifie et corrige tous types\nd\'exercices',
//                 backgroundImagePath:
//                     'assets/images/cardbackground/CardYellow.png',
//                 svgPath: 'assets/images/logos/CardYellow.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 16.h),

//               // Carte 3: Dictée intelligente (Vert)
//               _buildFeatureCard(
//                 backgroundColor: Color(0xFF4DD0A4),
//                 title: 'Dictée intelligente',
//                 description: 'Crée une dictée à partir d\'un\nthème ou de mots',
//                 backgroundImagePath: 'assets/images/background/CardGreen.png',
//                 svgPath: 'assets/images/logos/CardGreen.svg',
//                 onTap: () {},
//               ),

//               SizedBox(height: 24.h),

//               Container(
//                 width: double.infinity,

//                 padding: EdgeInsets.only(top: 24.h, left: 24.w),
//                 decoration: BoxDecoration(
//                   // color: Color(0xFFF5F5F5),
//                   image: DecorationImage(
//                     image: AssetImage(
//                       'assets/images/background/HeaderCardWhite.png',
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(12.r),
//                   // boxShadow: [
//                   //   BoxShadow(
//                   //     color: Colors.black.withOpacity(0.05),
//                   //     blurRadius: 10,
//                   //     offset: Offset(0, 4),
//                   //   ),
//                   // ],
//                 ),
//                 child: Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Votre enfant vous a\nposé une question?',
//                           style: TextStyle(
//                             fontSize: 20.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           'Nous avons la réponse adaptée',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         SizedBox(height: 20.h),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 24.w,
//                               vertical: 14.h,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 'Posez votre question',
//                                 style: TextStyle(
//                                   fontSize: 15.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               SizedBox(width: 8.w),
//                               Icon(
//                                 Icons.arrow_forward,
//                                 size: 18.sp,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Illustration jaune à droite
//                     Positioned(
//                       right: 0.w,
//                       bottom: 0.h,
//                       child: SvgPicture.asset(
//                         'assets/images/logos/Star.svg',
//                         width: 100.w,
//                         height: 100.w,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // SizedBox(height: 40.h),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFeatureCard({
//     required Color backgroundColor,
//     required String title,
//     required String description,
//     required String svgPath,
//     required String backgroundImagePath,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(12.r),
//       child: Container(
//         width: double.infinity,
//         height: 150.h,
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.circular(12.r),
//           image: DecorationImage(
//             image: AssetImage(backgroundImagePath),
//             fit: BoxFit.cover,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.08),
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             // Texte à gauche
//             Positioned(
//               left: 16.w,
//               top: 16.h,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 20.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       height: 1.1,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.black,
//                       height: 1.1,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Illustration SVG à droite
//             Positioned(
//               right: 8.w,
//               bottom: 0,
//               child: Center(
//                 child: SvgPicture.asset(
//                   svgPath,
//                   width: 123.29.w,
//                   height: 123.29.w,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            children: [
              // Carte 1: Learn and practise (Rose)
              _buildFeatureCard(
                backgroundColor: Color(0xFFF8BBD0),
                title: 'Learn and practise',
                description:
                    'Cheat sheets, recitation\nhelper and quiz generator',
                backgroundImagePath: 'assets/images/background/CardPink.png',
                svgPath: 'assets/images/logos/CardPink.svg',
                svgRight: 8.w,
                svgBottom: 0,
                onTap: () {},
              ),

              SizedBox(height: 16.h),

              // Carte 2: Correcteur de devoirs (Jaune)
              _buildFeatureCard(
                backgroundColor: Color(0xFFFDD835),
                title: 'Correcteur de devoirs',
                description: 'Vérifie et corrige tous types\nd\'exercices',
                backgroundImagePath:
                    'assets/images/cardbackground/CardYellow.png',
                svgPath: 'assets/images/logos/CardYellow.svg',
                svgRight: 48.w,
                svgBottom: 0,
                onTap: () {},
              ),

              SizedBox(height: 16.h),

              // Carte 3: Dictée intelligente (Vert)
              _buildFeatureCard(
                backgroundColor: Color(0xFF4DD0A4),
                title: 'Dictée intelligente',
                description: 'Crée une dictée à partir d\'un\nthème ou de mots',
                backgroundImagePath: 'assets/images/background/CardGreen.png',
                svgPath: 'assets/images/logos/CardGreen.svg',
                svgRight: 0.w,
                svgBottom: 0,
                onTap: (){},
              ),

              SizedBox(height: 24.h),

          
              Container(
                width: double.infinity,
                height: 180,
                padding: EdgeInsets.only(top: 16.h, left: 16.w),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background/CardWhite.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Votre enfant vous a\nposé une question?',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.1,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Nous avons la réponse adaptée',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            height: 1.1,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        ElevatedButton(
                          onPressed: () {
                            // context.go('/explanation-assistant');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 12.h,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Posez votre question',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Icon(
                                Icons.arrow_forward,
                                size: 18.sp,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 4.w,
                      bottom: 0.h,
                      child: SvgPicture.asset(
                        'assets/images/logos/Star.svg',
                        width: 128.97.w,
                        height: 132.41.w,
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

  Widget _buildFeatureCard({
    required Color backgroundColor,
    required String title,
    required String description,
    required String svgPath,
    required String backgroundImagePath,
    required double svgRight,
    required double svgBottom,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          image: DecorationImage(
            image: AssetImage(backgroundImagePath),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16.w,
              top: 16.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: svgRight,
              bottom: svgBottom,
              child: Center(
                child: SvgPicture.asset(
                  svgPath,
                  width: 123.29.w,
                  height: 123.29.w,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
