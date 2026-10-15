// // ===================================== Parfait =======================================

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class UploadWordsSimplePage extends StatelessWidget {
//   const UploadWordsSimplePage({super.key});

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
//             image: AssetImage('assets/images/background/backgroundWhite.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // AppBar personnalisé
//               Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 16.w,
//                       right: 16.w,
//                       top: 24.h,
//                       bottom: 12.h,
//                     ),
//                     child: Align(
//                       alignment: Alignment.topRight,
//                       child: GestureDetector(
//                         onTap: () {
//                           // Action fermer
//                         },
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.black,
//                           size: 20.sp,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(height: 1.h, color: Color(0xFFEDF0EF)),
//                 ],
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Spacer(flex: 2),

//                       // Titre
//                       Text(
//                         'Start by uploading a set of words to include',
//                         style: TextStyle(
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),

//                       SizedBox(height: 4.h),

//                       // Description
//                       Text(
//                         'Boetia wil generate a specific quiz using these words',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       Spacer(flex: 1),

//                       // Bouton "Take photo"
//                       SizedBox(
//                         width: double.infinity,
//                         height: 56.h,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Action prendre photo
//                             showEnableCameraModal(context);
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             // padding: EdgeInsets.symmetric(
//                             //   vertical: 12.h,
//                             //   horizontal: 12.w,
//                             // ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Take photo',
//                             style: TextStyle(
//                               fontSize: 16.sp,
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
// }

// void showEnableCameraModal(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     backgroundColor: Colors.transparent,
//     builder: (BuildContext context) {
//       return Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(8.r),
//             topRight: Radius.circular(8.r),
//           ),
//         ),
//         padding: EdgeInsets.all(32.w),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // ===== Titre =====
//             Text(
//               'Enable your mic and camera',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 24.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),

//             SizedBox(height: 12.h),

//             // ===== Description =====
//             Text(
//               'In order to start using this feature, you need to enable access to your phone\'s camera and microphone',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 14.sp,
//                 color: Colors.black,
//                 height: 1.5,
//               ),
//             ),

//             SizedBox(height: 12.h),

//             // ===== Bouton Enable =====
//             SizedBox(
//               width: double.infinity,
//               // height: 56.h,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   // Ajouter la logique pour demander les permissions
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: EdgeInsets.symmetric(
//                     vertical: 12.h,
//                     horizontal: 12.w,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Enable mic and camera',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

// =================================================== Parfait =================================================

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class UploadHomeworkPage extends StatelessWidget {
//   const UploadHomeworkPage({super.key});

//   // === Dialog de confirmation de suppression ===
//   void _showDeletePhotoDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierColor: Colors.black.withOpacity(0.5),
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.r),
//           ),
//           backgroundColor: Colors.white,
//           child: Padding(
//             padding: EdgeInsets.all(32.w),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 // === Titre ===
//                 Text(
//                   'Delete photo?',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     height: 1.2,
//                   ),
//                 ),

//                 SizedBox(height: 12.h),

//                 // === Description ===
//                 Text(
//                   'Are you sure you want to delete this photo?',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     color: Colors.black,
//                     height: 1.5,
//                   ),
//                 ),

//                 SizedBox(height: 12.h),

//                 // === Bouton "Yes, delete" ===
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                       // Logique de suppression ici
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: EdgeInsets.symmetric(
//                         vertical: 12.h,
//                         horizontal: 12.w,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Yes, delete',
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
//         );
//       },
//     );
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
//         child: SafeArea(
//           child: Column(
//             children: [
//               // AppBar personnalisé
//               Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 16.w,
//                       right: 16.w,
//                       top: 24.h,
//                       bottom: 12.h,
//                     ),
//                     child: Align(
//                       alignment: Alignment.topRight,
//                       child: GestureDetector(
//                         onTap: () {
//                           // Action fermer
//                         },
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.black,
//                           size: 20.sp,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(height: 1.h, color: Color(0xFFEDF0EF)),
//                 ],
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Spacer(),

//                       // === Titre ===
//                       Text(
//                         'Start by uploading your homework',
//                         style: TextStyle(
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),

//                       SizedBox(height: 4.h),

//                       // === Description ===
//                       Text(
//                         'Boetia will analyse and check for any mistakes and improvements!',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 32.h),

//                       // === Images empilées horizontalement ===
//                       Center(
//                         child: SizedBox(
//                           width: 197.w,
//                           height: 180.h,
//                           child: Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               Positioned(
//                                 left: 0,
//                                 child: _buildPhotoCard(context),
//                               ),
//                               Positioned(
//                                 left: 30.w,
//                                 child: _buildPhotoCard(context),
//                               ),
//                               Positioned(
//                                 left: 60.w,
//                                 child: _buildPhotoCard(context),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 32.h),

//                       // === Bouton "Add another photo" ===
//                       SizedBox(
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {},
//                           style: OutlinedButton.styleFrom(
//                             padding: EdgeInsets.symmetric(
//                               vertical: 12.h,
//                               horizontal: 12.w,
//                             ),
//                             side: BorderSide(color: Colors.black, width: 1.w),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             backgroundColor: Colors.white,
//                           ),
//                           child: Text(
//                             'Add another photo',
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 8.h),

//                       // === Bouton "Continue" ===
//                       SizedBox(
//                         width: double.infinity,
//                         height: 56.h,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             padding: EdgeInsets.symmetric(
//                               // vertical: 12.h,
//                               // horizontal: 12.w,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Continue',
//                             style: TextStyle(
//                               fontSize: 16.sp,
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

//   Widget _buildPhotoCard(BuildContext context) {
//     return Container(
//       width: 135.w,
//       height: 180.h,
//       decoration: BoxDecoration(
//         color: const Color(0xFFD1D5DB),
//         borderRadius: BorderRadius.circular(24.r),
//         border: Border.all(color: const Color(0xFFF3AC1E), width: 3.w),
//       ),
//       child: Stack(
//         children: [
//           Center(
//             child: Icon(Icons.image, size: 60.sp, color: Color(0xFFEDF0EF)),
//           ),
//           // Icône de suppression
//           Positioned(
//             top: 4.h,
//             left: 4.w,
//             child: GestureDetector(
//               onTap: () {
//                 _showDeletePhotoDialog(context);
//               },
//               child: Container(
//                 // decoration: BoxDecoration(
//                 //   color: Colors.black.withOpacity(0.6),
//                 //   borderRadius: BorderRadius.circular(8.r),
//                 // ),
//                 // padding: EdgeInsets.all(4.w),
//                 child: Icon(
//                   Icons.delete_outline,
//                   size: 48.sp,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // // ========================================================================================

