// // // ------------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class LessonPage extends StatelessWidget {
//   const LessonPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // En-tête avec image de fond
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/difficult/CardSmall.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30.r),
//                 bottomRight: Radius.circular(30.r),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   spreadRadius: 0,
//                   blurRadius: 9,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
//                 child: Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Bouton retour
//                         Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             InkWell(
//                               onTap: () {},
//                               child: Icon(
//                                 Icons.arrow_back_ios,
//                                 size: 20.sp,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             // SizedBox(width: 70.w), // Espace pour les cartes
//                           ],
//                         ),
//                         SizedBox(height: 36.h),
//                         // Titre et description
//                         Text(
//                           'Your lesson 1',
//                           style: TextStyle(
//                             fontSize: 20.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           'This can be a quick description\nof the lesson',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         // SizedBox(height: 20.h),
//                       ],
//                     ),
//                     // Mini-cartes positionnées au-dessus du texte
//                     Positioned(
//                       right: 0,
//                       bottom: 0.h,
//                       child: SizedBox(
//                         width: 64.w,
//                         height: 56.h,
//                         child: Stack(
//                           alignment: Alignment.centerRight,
//                           children: [
//                             Positioned(right: 18.w, child: _buildMiniCard()),
//                             Positioned(right: 9.w, child: _buildMiniCard()),
//                             Positioned(right: 0, child: _buildMiniCard()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // Contenu non scrollable
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(20.w),
//               child: Column(
//                 children: [
//                   SizedBox(height: 10.h),

//                   // Carte 1: Cheat sheets
//                   _buildLessonCard(
//                     icon: Icons.menu_book,
//                     iconColor: Color(0xFFEC407A),
//                     title: 'Cheat sheets',
//                     description:
//                         'Learn your lesson in a very easy,\nfun and interactive way!',
//                     onTap: () {},
//                   ),

//                   SizedBox(height: 20.h),

//                   // Carte 2: Test your knowledge
//                   _buildLessonCard(
//                     icon: Icons.star_border,
//                     iconColor: Color(0xFFEC407A),
//                     title: 'Test your knowledge!',
//                     description:
//                         'How much do you know? Take the\ntests and see how much you\'ve\nlearned!',
//                     onTap: () {},
//                   ),

//                   SizedBox(height: 20.h),

//                   // Carte 3: Récitation guidée
//                   _buildLessonCard(
//                     icon: Icons.flag,
//                     iconColor: Color(0xFFEC407A),
//                     title: 'Récitation guidée',
//                     description:
//                         'Analyse et corrige une récitation of\nyour lesson',
//                     onTap: () {},
//                   ),

//                   SizedBox(height: 25.h),

//                   // Image SVG du visage souriant en bas
//                   Container(
//                     width: 120.w,
//                     height: 120.w,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color(0xFFEC407A),
//                     ),
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 10.h),
//                           // Yeux fermés (deux petits arcs)
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 20.w,
//                                 height: 3.h,
//                                 decoration: BoxDecoration(
//                                   color: Colors.black,
//                                   borderRadius: BorderRadius.circular(5.r),
//                                 ),
//                               ),
//                               SizedBox(width: 25.w),
//                               Container(
//                                 width: 20.w,
//                                 height: 3.h,
//                                 decoration: BoxDecoration(
//                                   color: Colors.black,
//                                   borderRadius: BorderRadius.circular(5.r),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 15.h),
//                           // Sourire
//                           Container(
//                             width: 50.w,
//                             height: 25.h,
//                             decoration: BoxDecoration(
//                               border: Border(
//                                 bottom: BorderSide(
//                                   color: Colors.black,
//                                   width: 2.5.w,
//                                 ),
//                               ),
//                               borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(50.r),
//                                 bottomRight: Radius.circular(50.r),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLessonCard({
//     required IconData icon,
//     required Color iconColor,
//     required String title,
//     required String description,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(20.r),
//       child: Container(
//         padding: EdgeInsets.all(20.r),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.15),
//               spreadRadius: 0,
//               blurRadius: 10,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             // Icône
//             Container(
//               width: 50.w,
//               height: 50.w,
//               decoration: BoxDecoration(
//                 color: iconColor.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(12.r),
//               ),
//               child: Icon(icon, color: iconColor, size: 28.sp),
//             ),

//             SizedBox(width: 15.w),

//             // Texte
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   SizedBox(height: 5.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 12.sp,
//                       color: Colors.black54,
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Flèche
//             Icon(Icons.arrow_forward_ios, size: 16.sp, color: Colors.black54),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMiniCard() {
//     return Container(
//       width: 42.w,
//       height: 50.h,
//       decoration: BoxDecoration(
//         color: const Color(0xFFD1D5DB),
//         borderRadius: BorderRadius.circular(8.r),
//         border: Border.all(color: const Color(0xFFF3AC1E), width: 3.w),
//       ),
//       child: Center(
//         child: Icon(Icons.description, size: 16.sp, color: Color(0xFFEDF0EF)),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LessonPage extends StatelessWidget {
//   const LessonPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // En-tête avec image de fond
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/difficult/CardSmall.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30.r),
//                 bottomRight: Radius.circular(30.r),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   spreadRadius: 0,
//                   blurRadius: 9,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
//                 child: Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Bouton retour
//                         Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             InkWell(
//                               onTap: () {},
//                               child: Icon(
//                                 Icons.arrow_back_ios,
//                                 size: 20.sp,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             // SizedBox(width: 70.w), // Espace pour les cartes
//                           ],
//                         ),
//                         SizedBox(height: 36.h),
//                         // Titre et description
//                         Text(
//                           'Your lesson 1',
//                           style: TextStyle(
//                             fontSize: 20.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           'This can be a quick description\nof the lesson',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black,
//                             height: 1.1,
//                           ),
//                         ),
//                         // SizedBox(height: 20.h),
//                       ],
//                     ),
//                     // Mini-cartes positionnées au-dessus du texte
//                     Positioned(
//                       right: 0,
//                       bottom: 0.h,
//                       child: SizedBox(
//                         width: 64.w,
//                         height: 56.h,
//                         child: Stack(
//                           alignment: Alignment.centerRight,
//                           children: [
//                             Positioned(right: 18.w, child: _buildMiniCard()),
//                             Positioned(right: 9.w, child: _buildMiniCard()),
//                             Positioned(right: 0, child: _buildMiniCard()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // Contenu non scrollable
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(20.w),
//               child: Column(
//                 children: [
//                   SizedBox(height: 10.h),

//                   // Carte 1: Cheat sheets
//                   _buildLessonCard(
//                     icon: Icons.menu_book,
//                     iconColor: Color(0xFFEC407A),
//                     title: 'Cheat sheets',
//                     description:
//                         'Learn your lesson in a very easy,\nfun and interactive way!',
//                     onTap: () {},
//                   ),

//                   SizedBox(height: 20.h),

//                   // Carte 2: Test your knowledge
//                   _buildLessonCard(
//                     icon: Icons.star_border,
//                     iconColor: Color(0xFFEC407A),
//                     title: 'Test your knowledge!',
//                     description:
//                         'How much do you know? Take the\ntests and see how much you\'ve\nlearned!',
//                     onTap: () {},
//                   ),

//                   SizedBox(height: 20.h),

//                   // Carte 3: Récitation guidée
//                   _buildLessonCard(
//                     icon: Icons.flag,
//                     iconColor: Color(0xFFEC407A),
//                     title: 'Récitation guidée',
//                     description:
//                         'Analyse et corrige une récitation of\nyour lesson',
//                     onTap: () {},
//                   ),

//                   SizedBox(height: 25.h),

//                   // Image SVG du visage souriant en bas
//                   SvgPicture.asset(
//                     'assets/images/LessonPageLogo.svg',
//                     width: 120.w,
//                     height: 120.w,
//                   ),

//                   Spacer(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLessonCard({
//     required IconData icon,
//     required Color iconColor,
//     required String title,
//     required String description,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(20.r),
//       child: Container(
//         padding: EdgeInsets.all(20.r),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.15),
//               spreadRadius: 0,
//               blurRadius: 10,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             // Icône
//             Container(
//               width: 50.w,
//               height: 50.w,
//               decoration: BoxDecoration(
//                 color: iconColor.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(12.r),
//               ),
//               child: Icon(icon, color: iconColor, size: 28.sp),
//             ),

//             SizedBox(width: 15.w),

//             // Texte
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   SizedBox(height: 5.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 12.sp,
//                       color: Colors.black54,
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Flèche
//             Icon(Icons.arrow_forward_ios, size: 16.sp, color: Colors.black54),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMiniCard() {
//     return Container(
//       width: 42.w,
//       height: 50.h,
//       decoration: BoxDecoration(
//         color: const Color(0xFFD1D5DB),
//         borderRadius: BorderRadius.circular(8.r),
//         border: Border.all(color: const Color(0xFFF3AC1E), width: 3.w),
//       ),
//       child: Center(
//         child: Icon(Icons.description, size: 16.sp, color: Color(0xFFEDF0EF)),
//       ),
//     );
//   }
// }

// -----------------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecitationFeedbackPage extends StatelessWidget {
  const RecitationFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header rose arrondi
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/difficult/CardPinkLarge.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 9,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Bouton fermer
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(4.r),
                          child: Icon(
                            Icons.close,
                            size: 24.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    // Titre
                    Text(
                      'Your recitation feedback',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 1.1,
                      ),
                    ),

                    SizedBox(height: 8.h),

                    // Description
                    Text(
                      'This can be a quick description of the lesson',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        height: 1.1,
                      ),
                    ),

                    SizedBox(height: 12.h),

                    // Badge points earned
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFD700),
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                      child: Text(
                        '2 points earned!',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),

          // Contenu scrollable
          Expanded(
            child: Column(
              children: [
                // Titre avec icône d'erreur (fixe)
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 14.h),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 2.w),
                        ),
                        child: Icon(
                          Icons.priority_high,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        '3 errors detected',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                // Contenu scrollable
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Carte d'erreur 1
                        _buildErrorCard(
                          youSaid: 'Bla bla bla bla',
                          shouldBe: 'Blo blo blo blo blo',
                        ),

                        SizedBox(height: 21.h),

                        // Carte d'erreur 2
                        _buildErrorCard(
                          youSaid: 'Bla bla bla bla',
                          shouldBe: 'Blo blo blo blo blo',
                        ),

                        SizedBox(height: 21.h),

                        // Carte d'erreur 3
                        _buildErrorCard(
                          youSaid: 'Bla bla bla bla',
                          shouldBe: 'Blo blo blo blo blo',
                        ),

                        SizedBox(height: 21.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bouton en bas
          Padding(
            padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 50.h),
            child: SizedBox(
              height: 56.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  // padding: EdgeInsets.symmetric(vertical: 18.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Finish',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorCard({required String youSaid, required String shouldBe}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.w),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // You said
          Text(
            'You said:',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            '"$youSaid"',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.red,
              fontStyle: FontStyle.italic,
            ),
          ),

          SizedBox(height: 12.h),

          // Instead, it should've been
          Text(
            'Instead, it should\'ve been:',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            '"$shouldBe"',
            style: TextStyle(
              fontSize: 14.sp,
              color: Color(0xFF00AA00),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeworkFeedbackPage extends StatelessWidget {
//   const HomeworkFeedbackPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // Header jaune arrondi
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/difficult/CardYellow.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30.r),
//                 bottomRight: Radius.circular(30.r),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   spreadRadius: 0,
//                   blurRadius: 9,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Bouton fermer
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Container(
//                           padding: EdgeInsets.all(4.r),
//                           child: Icon(
//                             Icons.close,
//                             size: 24.sp,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 15.h),

//                     // Titre
//                     Text(
//                       'Your homework feedback',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.1,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     // Description
//                     Text(
//                       'This can be a quick description',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.black,
//                         height: 1.1,
//                       ),
//                     ),

//                     SizedBox(height: 12.h),

//                     // Badge points earned (rouge)
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 12.w,
//                         vertical: 6.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color(0xFFF56E00),
//                         borderRadius: BorderRadius.circular(32.r),
//                       ),
//                       child: Text(
//                         '2 points earned!',
//                         style: TextStyle(
//                           fontSize: 12.sp,
//                           // fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20.h),
//           // Contenu scrollable
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Premier paragraphe
//                   Text(
//                     'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black87,
//                       height: 1.5,
//                     ),
//                   ),

//                   SizedBox(height: 20.h),

//                   // Deuxième paragraphe
//                   Text(
//                     'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black,
//                       height: 1.5,
//                     ),
//                   ),

//                   SizedBox(height: 20.h),
//                   Text(
//                     'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black,
//                       height: 1.5,
//                     ),
//                   ),

//                   SizedBox(height: 20.h),
//                   Text(
//                     'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black,
//                       height: 1.5,
//                     ),
//                   ),

//                   SizedBox(height: 20.h),
//                   Text(
//                     'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black,
//                       height: 1.5,
//                     ),
//                   ),

//                   SizedBox(height: 20.h),
//                 ],
//               ),
//             ),
//           ),

//           // Bouton en bas
//           Padding(
//             padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 50.h),
//             child: SizedBox(
//               height: 56.h,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Try another!',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
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

// -----------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:async';

// class RecitationListeningPage extends StatefulWidget {
//   const RecitationListeningPage({super.key});

//   @override
//   State<RecitationListeningPage> createState() =>
//       _RecitationListeningPageState();
// }

// class _RecitationListeningPageState extends State<RecitationListeningPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _scaleAnimation;
//   Timer? _timer;
//   int _seconds = 0;

//   @override
//   void initState() {
//     super.initState();

//     // Animation du microphone (pulsation)
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 1500),
//     )..repeat(reverse: true);

//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.15).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );

//     // Timer pour compter les secondes
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         _seconds++;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }

//   String _formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/BackgroundBlanch.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Contenu principal
//           SafeArea(
//             child: Column(
//               children: [
//                 Spacer(flex: 2),

//                 // Icône microphone animée
//                 AnimatedBuilder(
//                   animation: _scaleAnimation,
//                   builder: (context, child) {
//                     return Transform.scale(
//                       scale: _scaleAnimation.value,
//                       child: Container(
//                         width: 100.w,
//                         height: 100.h,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFFEC407A).withOpacity(0.1),
//                         ),
//                         child: Center(
//                           child: Icon(
//                             Icons.mic,
//                             size: 60.sp,
//                             color: Color(0xFFEC407A),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),

//                 SizedBox(height: 30.h),

//                 // Titre "Listening..."
//                 Text(
//                   'Listening...',
//                   style: TextStyle(
//                     fontSize: 26.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 // Sous-titre
//                 Text(
//                   'Boetia analyse votre leçon',
//                   style: TextStyle(fontSize: 15.sp, color: Colors.black54),
//                 ),

//                 Spacer(flex: 1),

//                 // Indicateur de temps
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 24.w,
//                     vertical: 12.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.15),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         width: 8.w,
//                         height: 8.h,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFFEC407A),
//                         ),
//                       ),
//                       SizedBox(width: 10.w),
//                       Text(
//                         _formatTime(_seconds),
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 Spacer(flex: 2),

//                 // Boutons en bas
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     children: [
//                       // Bouton Pause
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {},
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             side: BorderSide(
//                               color: Colors.grey.shade300,
//                               width: 1.5.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(2.r),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   Icons.pause,
//                                   size: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15.h),

//                       // Bouton Finish
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Finish',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 50.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:async';

// class RecitationListeningPage extends StatefulWidget {
//   const RecitationListeningPage({super.key});

//   @override
//   State<RecitationListeningPage> createState() =>
//       _RecitationListeningPageState();
// }

// class _RecitationListeningPageState extends State<RecitationListeningPage>
//     with TickerProviderStateMixin {
//   late AnimationController _pulseController;
//   late AnimationController _waveController;
//   late Animation<double> _scaleAnimation;
//   Timer? _timer;
//   int _seconds = 0;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de pulsation du microphone
//     _pulseController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1500),
//     )..repeat(reverse: true);

//     _scaleAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
//       CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
//     );

//     // Animation des ondes sonores
//     _waveController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 2000),
//     )..repeat();

//     // Timer pour compter les secondes
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _seconds++;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _pulseController.dispose();
//     _waveController.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }

//   String _formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/BackgroundBlanch.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Contenu principal
//           SafeArea(
//             child: Column(
//               children: [
//                 const Spacer(flex: 2),

//                 // Icône microphone avec ondes animées
//                 SizedBox(
//                   width: 200.w,
//                   height: 200.h,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       // Ondes sonores (3 cercles)
//                       ...List.generate(3, (index) {
//                         return AnimatedBuilder(
//                           animation: _waveController,
//                           builder: (context, child) {
//                             final delay = index * 0.33;
//                             final progress =
//                                 (_waveController.value + delay) % 1.0;

//                             return Opacity(
//                               opacity: (1 - progress) * 0.6,
//                               child: Container(
//                                 width: 80.w + (progress * 120.w),
//                                 height: 80.h + (progress * 120.h),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: const Color(0xFFEC407A),
//                                     width: 2.w,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       }),

//                       // Cercle de fond avec gradient
//                       AnimatedBuilder(
//                         animation: _scaleAnimation,
//                         builder: (context, child) {
//                           return Transform.scale(
//                             scale: _scaleAnimation.value,
//                             child: Container(
//                               width: 120.w,
//                               height: 120.h,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 gradient: RadialGradient(
//                                   colors: [
//                                     const Color(0xFFEC407A).withOpacity(0.2),
//                                     const Color(0xFFEC407A).withOpacity(0.05),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),

//                       // Cercle principal du microphone
//                       AnimatedBuilder(
//                         animation: _scaleAnimation,
//                         builder: (context, child) {
//                           return Transform.scale(
//                             scale: _scaleAnimation.value,
//                             child: Container(
//                               width: 90.w,
//                               height: 90.h,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: const Color(0xFFEC407A),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(
//                                       0xFFEC407A,
//                                     ).withOpacity(0.4),
//                                     blurRadius: 20,
//                                     spreadRadius: 5,
//                                   ),
//                                 ],
//                               ),
//                               child: Icon(
//                                 Icons.mic,
//                                 size: 45.sp,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 30.h),

//                 // Titre "Listening..."
//                 Text(
//                   'Listening...',
//                   style: TextStyle(
//                     fontSize: 26.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 // Sous-titre
//                 Text(
//                   'Boetia analyse votre leçon',
//                   style: TextStyle(fontSize: 15.sp, color: Colors.black54),
//                 ),

//                 const Spacer(flex: 1),

//                 // Indicateur de temps
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 24.w,
//                     vertical: 12.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.15),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Point rouge clignotant
//                       AnimatedBuilder(
//                         animation: _pulseController,
//                         builder: (context, child) {
//                           return Opacity(
//                             opacity: 0.3 + (_pulseController.value * 0.7),
//                             child: Container(
//                               width: 8.w,
//                               height: 8.h,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xFFEC407A),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       SizedBox(width: 10.w),
//                       Text(
//                         _formatTime(_seconds),
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // Boutons en bas
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     children: [
//                       // Bouton Pause
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {},
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             side: BorderSide(
//                               color: Colors.grey.shade300,
//                               width: 1.5.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(2.r),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   Icons.pause,
//                                   size: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15.h),

//                       // Bouton Finish
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Finish',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 50.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:async';
// import 'dart:math' as math;

// class RecitationListeningPage extends StatefulWidget {
//   const RecitationListeningPage({super.key});

//   @override
//   State<RecitationListeningPage> createState() =>
//       _RecitationListeningPageState();
// }

// class _RecitationListeningPageState extends State<RecitationListeningPage>
//     with TickerProviderStateMixin {
//   late AnimationController _breathController;
//   late AnimationController _particlesController;
//   Timer? _timer;
//   int _seconds = 0;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de respiration douce
//     _breathController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 2000),
//     )..repeat(reverse: true);

//     // Animation des particules
//     _particlesController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 3000),
//     )..repeat();

//     // Timer pour compter les secondes
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _seconds++;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _breathController.dispose();
//     _particlesController.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }

//   String _formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/BackgroundBlanch.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Contenu principal
//           SafeArea(
//             child: Column(
//               children: [
//                 const Spacer(flex: 2),

//                 // Animation du microphone avec effet de respiration
//                 SizedBox(
//                   width: 220.w,
//                   height: 220.h,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       // Particules flottantes
//                       ...List.generate(8, (index) {
//                         return AnimatedBuilder(
//                           animation: _particlesController,
//                           builder: (context, child) {
//                             final angle =
//                                 (index * 45.0 +
//                                     _particlesController.value * 360) *
//                                 math.pi /
//                                 180;
//                             final radius =
//                                 50.0 +
//                                 (math.sin(
//                                       _particlesController.value * 2 * math.pi,
//                                     ) *
//                                     15);
//                             final opacity =
//                                 0.3 +
//                                 (math.sin(
//                                       _particlesController.value * 2 * math.pi +
//                                           index,
//                                     ) *
//                                     0.3);

//                             return Transform.translate(
//                               offset: Offset(
//                                 radius * math.cos(angle),
//                                 radius * math.sin(angle),
//                               ),
//                               child: Opacity(
//                                 opacity: opacity.clamp(0.0, 1.0),
//                                 child: Container(
//                                   width: 8.w,
//                                   height: 8.h,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: const Color(0xFFEC407A),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       }),

//                       // Cercle extérieur avec respiration
//                       AnimatedBuilder(
//                         animation: _breathController,
//                         builder: (context, child) {
//                           final scale = 1.0 + (_breathController.value * 0.15);
//                           final opacity =
//                               0.15 + (_breathController.value * 0.1);

//                           return Transform.scale(
//                             scale: scale,
//                             child: Container(
//                               width: 130.w,
//                               height: 130.h,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: const Color(
//                                   0xFFEC407A,
//                                 ).withOpacity(opacity),
//                               ),
//                             ),
//                           );
//                         },
//                       ),

//                       // Cercle moyen
//                       AnimatedBuilder(
//                         animation: _breathController,
//                         builder: (context, child) {
//                           final scale = 1.0 + (_breathController.value * 0.1);

//                           return Transform.scale(
//                             scale: scale,
//                             child: Container(
//                               width: 100.w,
//                               height: 100.h,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: const Color(0xFFEC407A).withOpacity(0.3),
//                               ),
//                             ),
//                           );
//                         },
//                       ),

//                       // Cercle principal avec le microphone
//                       AnimatedBuilder(
//                         animation: _breathController,
//                         builder: (context, child) {
//                           final scale = 1.0 + (_breathController.value * 0.05);

//                           return Transform.scale(
//                             scale: scale,
//                             child: Container(
//                               width: 80.w,
//                               height: 80.h,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: const Color(0xFFEC407A),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(
//                                       0xFFEC407A,
//                                     ).withOpacity(0.5),
//                                     blurRadius: 20,
//                                     spreadRadius: 2,
//                                   ),
//                                 ],
//                               ),
//                               child: Icon(
//                                 Icons.mic,
//                                 size: 40.sp,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 30.h),

//                 // Titre "Listening..."
//                 Text(
//                   'Listening...',
//                   style: TextStyle(
//                     fontSize: 26.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 // Sous-titre
//                 Text(
//                   'Boetia analyse votre leçon',
//                   style: TextStyle(fontSize: 15.sp, color: Colors.black54),
//                 ),

//                 const Spacer(flex: 1),

//                 // Indicateur de temps
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 24.w,
//                     vertical: 12.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.15),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Point rouge clignotant
//                       AnimatedBuilder(
//                         animation: _breathController,
//                         builder: (context, child) {
//                           return Opacity(
//                             opacity: 0.4 + (_breathController.value * 0.6),
//                             child: Container(
//                               width: 8.w,
//                               height: 8.h,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xFFEC407A),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       SizedBox(width: 10.w),
//                       Text(
//                         _formatTime(_seconds),
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // Boutons en bas
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     children: [
//                       // Bouton Pause
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {},
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             side: BorderSide(
//                               color: Colors.grey.shade300,
//                               width: 1.5.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(2.r),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   Icons.pause,
//                                   size: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15.h),

//                       // Bouton Finish
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Finish',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 50.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:async';
// import 'dart:math' as math;

// class RecitationListeningPage extends StatefulWidget {
//   const RecitationListeningPage({super.key});

//   @override
//   State<RecitationListeningPage> createState() =>
//       _RecitationListeningPageState();
// }

// class _RecitationListeningPageState extends State<RecitationListeningPage>
//     with TickerProviderStateMixin {
//   late AnimationController _waveController;
//   late AnimationController _glowController;
//   Timer? _timer;
//   int _seconds = 0;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de l'onde sonore
//     _waveController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1500),
//     )..repeat();

//     // Animation de la lueur
//     _glowController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1800),
//     )..repeat(reverse: true);

//     // Timer pour compter les secondes
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _seconds++;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _waveController.dispose();
//     _glowController.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }

//   String _formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/BackgroundBlanch.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Contenu principal
//           SafeArea(
//             child: Column(
//               children: [
//                 const Spacer(flex: 2),

//                 // Animation du microphone avec onde sonore
//                 SizedBox(
//                   width: 250.w,
//                   height: 200.h,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       // Onde sonore horizontale (style waveform)
//                       AnimatedBuilder(
//                         animation: _waveController,
//                         builder: (context, child) {
//                           return CustomPaint(
//                             size: Size(250.w, 200.h),
//                             painter: SoundWavePainter(
//                               animationValue: _waveController.value,
//                               color: const Color(0xFFEC407A),
//                             ),
//                           );
//                         },
//                       ),

//                       // Cercle avec lueur animée
//                       AnimatedBuilder(
//                         animation: _glowController,
//                         builder: (context, child) {
//                           return Container(
//                             width: 100.w,
//                             height: 100.h,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               gradient: RadialGradient(
//                                 colors: [
//                                   const Color(0xFFEC407A).withOpacity(0.3),
//                                   const Color(0xFFEC407A).withOpacity(0.1),
//                                   const Color(0xFFEC407A).withOpacity(0),
//                                 ],
//                                 stops: [
//                                   0.0,
//                                   0.5 + (_glowController.value * 0.3),
//                                   1.0,
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),

//                       // Cercle principal du microphone
//                       Container(
//                         width: 85.w,
//                         height: 85.h,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: const Color(0xFFEC407A),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0xFFEC407A).withOpacity(0.4),
//                               blurRadius: 25,
//                               spreadRadius: 5,
//                             ),
//                           ],
//                         ),
//                         child: Icon(
//                           Icons.mic,
//                           size: 42.sp,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 30.h),

//                 // Titre "Listening..."
//                 Text(
//                   'Listening...',
//                   style: TextStyle(
//                     fontSize: 26.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 // Sous-titre
//                 Text(
//                   'Boetia analyse votre leçon',
//                   style: TextStyle(fontSize: 15.sp, color: Colors.black54),
//                 ),

//                 const Spacer(flex: 1),

//                 // Indicateur de temps
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 24.w,
//                     vertical: 12.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.15),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Point rouge clignotant
//                       AnimatedBuilder(
//                         animation: _glowController,
//                         builder: (context, child) {
//                           return Opacity(
//                             opacity: 0.4 + (_glowController.value * 0.6),
//                             child: Container(
//                               width: 8.w,
//                               height: 8.h,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xFFEC407A),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       SizedBox(width: 10.w),
//                       Text(
//                         _formatTime(_seconds),
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // Boutons en bas
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     children: [
//                       // Bouton Pause
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {},
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             side: BorderSide(
//                               color: Colors.grey.shade300,
//                               width: 1.5.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(2.r),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   Icons.pause,
//                                   size: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15.h),

//                       // Bouton Finish
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Finish',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 50.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Custom Painter pour l'onde sonore
// class SoundWavePainter extends CustomPainter {
//   final double animationValue;
//   final Color color;

//   SoundWavePainter({required this.animationValue, required this.color});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..strokeWidth = 3
//       ..strokeCap = StrokeCap.round;

//     final centerY = size.height / 2;
//     final barCount = 25;
//     final barSpacing = size.width / barCount;

//     for (int i = 0; i < barCount; i++) {
//       final x = i * barSpacing;

//       // Différentes hauteurs pour créer un effet de vague
//       final normalizedPosition = (i / barCount);
//       final wave = math.sin(
//         (normalizedPosition * math.pi * 4) + (animationValue * math.pi * 2),
//       );
//       final randomFactor = math.sin((i * 0.5) + (animationValue * math.pi * 3));

//       // Hauteur de la barre qui varie
//       final maxHeight = 30 + (wave * 15) + (randomFactor * 10);
//       final barHeight = maxHeight.abs();

//       // Dessiner la barre
//       canvas.drawLine(
//         Offset(x, centerY - barHeight / 2),
//         Offset(x, centerY + barHeight / 2),
//         paint,
//       );
//     }
//   }

//   @override
//   bool shouldRepaint(SoundWavePainter oldDelegate) => true;
// }

// ----------------------------- Parfait -----------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:async';
// import 'dart:math' as math;

// class RecitationListeningPage extends StatefulWidget {
//   const RecitationListeningPage({super.key});

//   @override
//   State<RecitationListeningPage> createState() =>
//       _RecitationListeningPageState();
// }

// class _RecitationListeningPageState extends State<RecitationListeningPage>
//     with TickerProviderStateMixin {
//   late AnimationController _pulseController;
//   late AnimationController _waveController;
//   Timer? _timer;
//   int _seconds = 0;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de pulsation
//     _pulseController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1500),
//     )..repeat(reverse: true);

//     // Animation des ondes
//     _waveController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 2000),
//     )..repeat();

//     // Timer pour compter les secondes
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _seconds++;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _pulseController.dispose();
//     _waveController.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }

//   String _formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/BackgroundBlanch.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Contenu principal
//           SafeArea(
//             child: Column(
//               children: [
//                 const Spacer(flex: 2),

//                 // Animation du microphone
//                 SizedBox(
//                   width: 200.w,
//                   height: 200.h,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       // Ondes sonores (3 cercles qui se propagent)
//                       ...List.generate(3, (index) {
//                         return AnimatedBuilder(
//                           animation: _waveController,
//                           builder: (context, child) {
//                             final delay = index * 0.33;
//                             final progress =
//                                 (_waveController.value + delay) % 1.0;

//                             return Opacity(
//                               opacity: (1 - progress) * 0.5,
//                               child: Container(
//                                 width: 80.w + (progress * 100.w),
//                                 height: 80.h + (progress * 100.h),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: const Color(0xFFEC407A),
//                                     width: 2.5.w,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       }),

//                       // Icône microphone (style outline comme dans l'image)
//                       AnimatedBuilder(
//                         animation: _pulseController,
//                         builder: (context, child) {
//                           final scale = 1.0 + (_pulseController.value * 0.08);

//                           return Transform.scale(
//                             scale: scale,
//                             child: Icon(
//                               Icons.mic_none_rounded,
//                               size: 80.sp,
//                               color: const Color(0xFFEC407A),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 30.h),

//                 // Titre "Listening..."
//                 Text(
//                   'Listening...',
//                   style: TextStyle(
//                     fontSize: 26.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 // Sous-titre
//                 Text(
//                   'Boetia analyse votre leçon',
//                   style: TextStyle(fontSize: 15.sp, color: Colors.black54),
//                 ),

//                 const Spacer(flex: 1),

//                 // Indicateur de temps
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 24.w,
//                     vertical: 12.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.15),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Point rouge clignotant
//                       AnimatedBuilder(
//                         animation: _pulseController,
//                         builder: (context, child) {
//                           return Opacity(
//                             opacity: 0.3 + (_pulseController.value * 0.7),
//                             child: Container(
//                               width: 8.w,
//                               height: 8.h,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xFFEC407A),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       SizedBox(width: 10.w),
//                       Text(
//                         _formatTime(_seconds),
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // Boutons en bas
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     children: [
//                       // Bouton Pause
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {},
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             side: BorderSide(
//                               color: Colors.grey.shade300,
//                               width: 1.5.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(2.r),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   Icons.pause,
//                                   size: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15.h),

//                       // Bouton Finish
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Finish',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 50.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ------------------------- Parfait ------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:async';
// import 'dart:math' as math;

// class RecitationListeningPage extends StatefulWidget {
//   const RecitationListeningPage({super.key});

//   @override
//   State<RecitationListeningPage> createState() =>
//       _RecitationListeningPageState();
// }

// class _RecitationListeningPageState extends State<RecitationListeningPage>
//     with TickerProviderStateMixin {
//   late AnimationController _pulseController;
//   late AnimationController _waveController;
//   Timer? _timer;
//   int _seconds = 0;
//   bool _isPaused = false;

//   @override
//   void initState() {
//     super.initState();

//     // Animation de pulsation
//     _pulseController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1500),
//     )..repeat(reverse: true);

//     // Animation des ondes
//     _waveController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 2000),
//     )..repeat();

//     // Timer pour compter les secondes
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _seconds++;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _pulseController.dispose();
//     _waveController.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }

//   String _formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
//   }

//   void _togglePause() {
//     setState(() {
//       _isPaused = !_isPaused;

//       if (_isPaused) {
//         // Arrêter les animations
//         _pulseController.stop();
//         _waveController.stop();

//         // Arrêter le timer
//         _timer?.cancel();
//       } else {
//         // Reprendre les animations
//         _pulseController.repeat(reverse: true);
//         _waveController.repeat();

//         // Reprendre le timer
//         _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//           setState(() {
//             _seconds++;
//           });
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/BackgroundBlanch.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Contenu principal
//           SafeArea(
//             child: Column(
//               children: [
//                 const Spacer(flex: 2),

//                 // Animation du microphone
//                 SizedBox(
//                   width: 200.w,
//                   height: 200.h,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       // Ondes sonores (3 cercles qui se propagent)
//                       ...List.generate(3, (index) {
//                         return AnimatedBuilder(
//                           animation: _waveController,
//                           builder: (context, child) {
//                             final delay = index * 0.33;
//                             final progress =
//                                 (_waveController.value + delay) % 1.0;

//                             return Opacity(
//                               opacity: (1 - progress) * 0.5,
//                               child: Container(
//                                 width: 80.w + (progress * 100.w),
//                                 height: 80.h + (progress * 100.h),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: const Color(0xFFF371B9),
//                                     width: 2.5.w,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       }),

//                       // Icône microphone (style outline comme dans l'image)
//                       AnimatedBuilder(
//                         animation: _pulseController,
//                         builder: (context, child) {
//                           final scale = 1.0 + (_pulseController.value * 0.08);

//                           return Transform.scale(
//                             scale: scale,
//                             child: Icon(
//                               Icons.mic_none_rounded,
//                               size: 80.sp,
//                               color: const Color(0xFFF371B9),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 30.h),

//                 // Titre "Listening..." ou "Paused"
//                 Text(
//                   _isPaused ? 'Paused' : 'Listening...',
//                   style: TextStyle(
//                     fontSize: 26.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 // Sous-titre
//                 Text(
//                   'Boetia analyse votre leçon',
//                   style: TextStyle(fontSize: 15.sp, color: Colors.black54),
//                 ),

//                 const Spacer(flex: 1),

//                 // Indicateur de temps
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 24.w,
//                     vertical: 12.h,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.15),
//                         spreadRadius: 0,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Point rouge clignotant
//                       AnimatedBuilder(
//                         animation: _pulseController,
//                         builder: (context, child) {
//                           return Opacity(
//                             opacity: 0.3 + (_pulseController.value * 0.7),
//                             child: Container(
//                               width: 8.w,
//                               height: 8.h,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xFFF371B9),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       SizedBox(width: 10.w),
//                       Text(
//                         _formatTime(_seconds),
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // Boutons en bas
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Column(
//                     children: [
//                       // Bouton Pause
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: _togglePause,
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             side: BorderSide(
//                               color: Colors.grey.shade300,
//                               width: 1.5.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(2.r),
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: Colors.black,
//                                     width: 2.w,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   _isPaused ? Icons.play_arrow : Icons.pause,
//                                   size: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 _isPaused
//                                     ? 'Resume recitation'
//                                     : 'Pause recitation',
//                                 style: TextStyle(
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15.h),

//                       // Bouton Finish
//                       SizedBox(
//                         height: 56.h,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Finish',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 50.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ----------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DictationFeedbackPage extends StatelessWidget {
//   const DictationFeedbackPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // Header vert arrondi
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/difficult/CardGreen.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30.r),
//                 bottomRight: Radius.circular(30.r),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   spreadRadius: 0,
//                   blurRadius: 9,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Bouton fermer
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Container(
//                           padding: EdgeInsets.all(4.r),
//                           child: Icon(
//                             Icons.close,
//                             size: 24.sp,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 15.h),

//                     // Titre
//                     Text(
//                       'Your dictation feedback',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.1,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     // Description
//                     Text(
//                       'This can be a quick description of the lesson',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.black,
//                         height: 1.1,
//                       ),
//                     ),

//                     SizedBox(height: 12.h),

//                     // Badge points earned (jaune)
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 12.w,
//                         vertical: 6.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color(0xFFFFD700),
//                         borderRadius: BorderRadius.circular(32.r),
//                       ),
//                       child: Text(
//                         '2 points earned!',
//                         style: TextStyle(fontSize: 12.sp, color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           SizedBox(height: 20.h),

//           // Contenu scrollable
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.symmetric(horizontal: 24.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Texte avec mots soulignés en rouge
//                   RichText(
//                     text: TextSpan(
//                       style: TextStyle(
//                         fontSize: 15.sp,
//                         color: Colors.black87,
//                         height: 1.5,
//                       ),
//                       children: [
//                         TextSpan(
//                           text:
//                               'Every day after school, the children walked home together. Their job was to help set the table and feed the dog. For a snack, they had whole grain bread with fruit. It was healthy and tasty! On weekends, they played games in the garden and watched football on TV with their family. One day, a strange ',
//                         ),
//                         TextSpan(
//                           text: 'turk',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             decorationColor: Colors.red,
//                             decorationThickness: 2.0,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         TextSpan(
//                           text:
//                               ' stopped outside. It was a new kind of transport for delivering books to the library. The children were excited and curious. They told their parents all about it at dinner, and everyone ',
//                         ),
//                         TextSpan(
//                           text: 'smaild',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             decorationColor: Colors.red,
//                             decorationThickness: 2.0,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         TextSpan(text: '. It was a fun and special day!'),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 20.h),

//                   // Carte verte "Overall feedback"
//                   Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.all(20.r),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           'assets/images/difficult/CardGreen.png',
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(20.r),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Overall feedback',
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 10.h),
//                         Text(
//                           'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black87,
//                             height: 1.5,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 20.h),
//                 ],
//               ),
//             ),
//           ),

//           // Bouton en bas
//           Padding(
//             padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 50.h),
//             child: SizedBox(
//               height: 56.h,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Finish',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
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

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DictationFeedbackPage extends StatelessWidget {
//   const DictationFeedbackPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // Header vert arrondi
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/difficult/CardGreen.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30.r),
//                 bottomRight: Radius.circular(30.r),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   spreadRadius: 0,
//                   blurRadius: 9,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Bouton fermer
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Container(
//                           padding: EdgeInsets.all(4.r),
//                           child: Icon(
//                             Icons.close,
//                             size: 24.sp,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 15.h),

//                     // Titre
//                     Text(
//                       'Your dictation feedback',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         height: 1.1,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     // Description
//                     Text(
//                       'This can be a quick description of the lesson',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.black,
//                         height: 1.1,
//                       ),
//                     ),

//                     SizedBox(height: 12.h),

//                     // Badge points earned (jaune)
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 12.w,
//                         vertical: 6.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color(0xFFFFD700),
//                         borderRadius: BorderRadius.circular(32.r),
//                       ),
//                       child: Text(
//                         '2 points earned!',
//                         style: TextStyle(fontSize: 12.sp, color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           SizedBox(height: 20.h),

//           // Contenu avec carte fixe
//           Expanded(
//             child: Column(
//               children: [
//                 // Zone scrollable pour le texte principal
//                 Expanded(
//                   child: SingleChildScrollView(
//                     padding: EdgeInsets.symmetric(horizontal: 24.w),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Texte avec mots soulignés en rouge
//                         RichText(
//                           text: TextSpan(
//                             style: TextStyle(
//                               fontSize: 15.sp,
//                               color: Colors.black87,
//                               height: 1.5,
//                             ),
//                             children: [
//                               TextSpan(
//                                 text:
//                                     'Every day after school, the children walked home together. Their job was to help set the table and feed the dog. For a snack, they had whole grain bread with fruit. It was healthy and tasty! On weekends, they played games in the garden and watched football on TV with their family. One day, a strange ',
//                               ),
//                               TextSpan(
//                                 text: 'turk',
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   decorationColor: Colors.red,
//                                   decorationThickness: 2.0,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text:
//                                     ' stopped outside. It was a new kind of transport for delivering books to the library. The children were excited and curious. They told their parents all about it at dinner, and everyone ',
//                               ),
//                               TextSpan(
//                                 text:
//                                     ' stopped outside. It was a new kind of transport for delivering books to the library. The children were excited and curious. They told their parents all about it at dinner, and everyone ',
//                               ),
//                               TextSpan(
//                                 text: 'smaild',
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   decorationColor: Colors.red,
//                                   decorationThickness: 2.0,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               TextSpan(text: '. It was a fun and special day!'),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 20.h),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 8),

//                 // Carte verte "Overall feedback" (fixe)
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.w),
//                   child: Container(
//                     width: double.infinity,
//                     constraints: BoxConstraints(
//                       maxHeight: 200.h, // Hauteur maximale de la carte
//                     ),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           'assets/images/difficult/CardGreen.png',
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(20.r),
//                     ),
//                     child: SingleChildScrollView(
//                       padding: EdgeInsets.all(20.r),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Overall feedback',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             'Bravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.\nBravo pour ton travail! Tu as bien compris le principe de résolution des équations du second degré et tu as bien appliqué la règle de trois pour résoudre le problème de proportionnalité.',
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               color: Colors.black87,
//                               height: 1.5,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20.h),
//               ],
//             ),
//           ),

//           // Bouton en bas
//           Padding(
//             padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 30.h),
//             child: SizedBox(
//               height: 56.h,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Try another!',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
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
