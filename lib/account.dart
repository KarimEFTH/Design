// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AccountPage extends StatefulWidget {
//   const AccountPage({Key? key}) : super(key: key);

//   @override
//   State<AccountPage> createState() => _AccountPageState();
// }

// class _AccountPageState extends State<AccountPage> {
//   String email = 'anas@email.com';
//   String subscriptionType = '1 kid';
//   String subscriptionFrequency = 'Annual subscription';

//   // Modal pour changer le mot de passe
//   void _showChangePasswordModal() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) => ChangePasswordModal(),
//     );
//   }

//   // Modal pour supprimer le compte
//   void _showDeleteAccountModal() {
//     showDialog(
//       context: context,
//       barrierColor: Colors.black.withOpacity(0.5),
//       builder: (context) => DeleteAccountModal(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           'Account',
//           style: TextStyle(
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Account details
//             Text(
//               'Account details',
//               style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),

//             SizedBox(height: 20.h),

//             // Email
//             Text(
//               'Email',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Text(
//                 email,
//                 style: TextStyle(fontSize: 14.sp, color: Colors.black87),
//               ),
//             ),

//             SizedBox(height: 20.h),

//             // Password
//             Text(
//               'Password',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Text(
//                 '**************',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.black87,
//                   letterSpacing: 2,
//                 ),
//               ),
//             ),

//             SizedBox(height: 12.h),

//             // Change password
//             GestureDetector(
//               onTap: _showChangePasswordModal,
//               child: Text(
//                 'Change password',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.black,
//                   decoration: TextDecoration.underline,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),

//             SizedBox(height: 32.h),

//             // Subscription
//             Text(
//               'Subscription',
//               style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),

//             SizedBox(height: 20.h),

//             // Subscription type
//             Text(
//               'Subscription type',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     subscriptionType,
//                     style: TextStyle(fontSize: 14.sp, color: Colors.black87),
//                   ),
//                   Icon(
//                     Icons.keyboard_arrow_down,
//                     size: 20.sp,
//                     color: Colors.black87,
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 20.h),

//             // Subscription frequency
//             Text(
//               'Subscription frequency',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     subscriptionFrequency,
//                     style: TextStyle(fontSize: 14.sp, color: Colors.black87),
//                   ),
//                   Icon(
//                     Icons.keyboard_arrow_down,
//                     size: 20.sp,
//                     color: Colors.black87,
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 40.h),

//             // Save changes button
//             SizedBox(
//               width: double.infinity,
//               height: 56.h,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Save changes',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 20.h),

//             // Delete account
//             Center(
//               child: GestureDetector(
//                 onTap: _showDeleteAccountModal,
//                 child: Text(
//                   'Delete account',
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: Colors.red,
//                     decoration: TextDecoration.underline,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 40.h),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ========== MODAL: Change Password ==========
// class ChangePasswordModal extends StatefulWidget {
//   const ChangePasswordModal({Key? key}) : super(key: key);

//   @override
//   State<ChangePasswordModal> createState() => _ChangePasswordModalState();
// }

// class _ChangePasswordModalState extends State<ChangePasswordModal> {
//   final _currentPasswordController = TextEditingController();
//   final _newPasswordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//   bool showError = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(24.r),
//           topRight: Radius.circular(24.r),
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(
//           left: 24.w,
//           right: 24.w,
//           top: 32.h,
//           bottom: MediaQuery.of(context).viewInsets.bottom + 32.h,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Titre
//             Text(
//               'Change your\npassword',
//               style: TextStyle(
//                 fontSize: 28.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.2,
//               ),
//             ),

//             SizedBox(height: 24.h),

//             // Current password
//             Text(
//               'Current password',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(
//                   color: showError ? Colors.red : Color(0xFFE0E0E0),
//                   width: 1.w,
//                 ),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Text(
//                 '**************',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.black87,
//                   letterSpacing: 2,
//                 ),
//               ),
//             ),

//             if (showError) ...[
//               SizedBox(height: 4.h),
//               Text(
//                 'Wrong password',
//                 style: TextStyle(fontSize: 12.sp, color: Colors.red),
//               ),
//             ],

//             SizedBox(height: 16.h),

//             // New password
//             Text(
//               'New password',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Text(
//                 '**************',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.black87,
//                   letterSpacing: 2,
//                 ),
//               ),
//             ),

//             SizedBox(height: 16.h),

//             // Confirm new password
//             Text(
//               'Confirm new password',
//               style: TextStyle(fontSize: 14.sp, color: Colors.black),
//             ),
//             SizedBox(height: 8.h),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
//                 borderRadius: BorderRadius.circular(30.r),
//               ),
//               child: Text(
//                 '**************',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.black87,
//                   letterSpacing: 2,
//                 ),
//               ),
//             ),

//             SizedBox(height: 32.h),

//             // Change password button
//             SizedBox(
//               width: double.infinity,
//               height: 56.h,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Change password',
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
//       ),
//     );
//   }
// }

// // ========== MODAL: Delete Account ==========
// class DeleteAccountModal extends StatelessWidget {
//   const DeleteAccountModal({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
//       backgroundColor: Colors.white,
//       child: Padding(
//         padding: EdgeInsets.all(32.w),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Icône triste rouge
//             Container(
//               width: 100.w,
//               height: 100.w,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Color(0xFFE53935),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Yeux fermés tristes
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Transform.rotate(
//                         angle: -0.3,
//                         child: Container(
//                           width: 18.w,
//                           height: 3.h,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF8B1A1A),
//                             borderRadius: BorderRadius.circular(5.r),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 20.w),
//                       Transform.rotate(
//                         angle: 0.3,
//                         child: Container(
//                           width: 18.w,
//                           height: 3.h,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF8B1A1A),
//                             borderRadius: BorderRadius.circular(5.r),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 12.h),
//                   // Bouche triste
//                   Transform.rotate(
//                     angle: 3.14159, // 180 degrés en radians
//                     child: Container(
//                       width: 40.w,
//                       height: 20.h,
//                       decoration: BoxDecoration(
//                         border: Border(
//                           top: BorderSide(color: Color(0xFF8B1A1A), width: 3.w),
//                         ),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40.r),
//                           topRight: Radius.circular(40.r),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 24.h),

//             // Titre
//             Text(
//               'You\'re deleting your\nBoetia account',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 height: 1.3,
//               ),
//             ),

//             SizedBox(height: 12.h),

//             // Description
//             Text(
//               'This action can\'t be reversed and you\nwill delete all profile and access to the\nBoetia features',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 13.sp,
//                 color: Colors.black54,
//                 height: 1.5,
//               ),
//             ),

//             SizedBox(height: 24.h),

//             // Bouton Yes, delete account
//             SizedBox(
//               width: double.infinity,
//               height: 56.h,
//               child: OutlinedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   // Logique de suppression
//                 },
//                 style: OutlinedButton.styleFrom(
//                   side: BorderSide(color: Colors.red, width: 1.5.w),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   backgroundColor: Colors.white,
//                 ),
//                 child: Text(
//                   'Yes, delete account',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.red,
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 12.h),

//             // Bouton Cancel
//             SizedBox(
//               width: double.infinity,
//               height: 56.h,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Cancel',
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
//       ),
//     );
//   }
// }

// --------------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String email = 'anas@email.com';
  String subscriptionType = '1 kid';
  String subscriptionFrequency = 'Annual subscription';

  // Modal pour changer le mot de passe
  void _showChangePasswordModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ChangePasswordModal(),
    );
  }

  // Modal pour supprimer le compte
  void _showDeleteAccountModal() {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => DeleteAccountModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Account',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Account details
            Text(
              'Account details',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20.h),

            // Email
            Text(
              'Email',
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Text(
                email,
                style: TextStyle(fontSize: 14.sp, color: Colors.black87),
              ),
            ),

            SizedBox(height: 20.h),

            // Password
            Text(
              'Password',
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Text(
                '**************',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black87,
                  letterSpacing: 2,
                ),
              ),
            ),

            SizedBox(height: 12.h),

            // Change password
            GestureDetector(
              onTap: _showChangePasswordModal,
              child: Text(
                'Change password',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 32.h),

            // Subscription
            Text(
              'Subscription',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20.h),

            // Subscription type
            Text(
              'Subscription type',
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subscriptionType,
                    style: TextStyle(fontSize: 14.sp, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20.sp,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),

            // Subscription frequency
            Text(
              'Subscription frequency',
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE0E0E0), width: 1.w),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subscriptionFrequency,
                    style: TextStyle(fontSize: 14.sp, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20.sp,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),

            Spacer(),

            // Save changes button
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Save changes',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.h),

            // Delete account
            Center(
              child: GestureDetector(
                onTap: _showDeleteAccountModal,
                child: Text(
                  'Delete account',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

// ========== MODAL: Change Password ==========
class ChangePasswordModal extends StatefulWidget {
  const ChangePasswordModal({Key? key}) : super(key: key);

  @override
  State<ChangePasswordModal> createState() => _ChangePasswordModalState();
}

class _ChangePasswordModalState extends State<ChangePasswordModal> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            top: 32.h,
            bottom: MediaQuery.of(context).viewInsets.bottom + 32.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Titre
              Text(
                'Change your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),

              SizedBox(height: 24.h),

              // Current password
              Text(
                'Current password',
                style: TextStyle(fontSize: 13.sp, color: Colors.black87),
              ),
              SizedBox(height: 8.h),
              TextField(
                controller: _currentPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: showError ? Colors.red : Color(0xFFE0E0E0),
                      width: 1.w,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: showError ? Colors.red : Color(0xFFE0E0E0),
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: showError ? Colors.red : Colors.black,
                      width: 1.w,
                    ),
                  ),
                ),
              ),

              if (showError) ...[
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Wrong password',
                    style: TextStyle(fontSize: 12.sp, color: Colors.red),
                  ),
                ),
              ],

              SizedBox(height: 16.h),

              // New password
              Text(
                'New password',
                style: TextStyle(fontSize: 13.sp, color: Colors.black87),
              ),
              SizedBox(height: 8.h),
              TextField(
                controller: _newPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: Color(0xFFE0E0E0),
                      width: 1.w,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: Color(0xFFE0E0E0),
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(color: Colors.black, width: 1.w),
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              // Confirm new password
              Text(
                'Confirm new password',
                style: TextStyle(fontSize: 13.sp, color: Colors.black87),
              ),
              SizedBox(height: 8.h),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: Color(0xFFE0E0E0),
                      width: 1.w,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: Color(0xFFE0E0E0),
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(color: Colors.black, width: 1.w),
                  ),
                ),
              ),

              SizedBox(height: 32.h),

              // Change password button
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () {
                    // Simuler une erreur pour tester
                    // setState(() {
                    //   showError = true;
                    // });
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Change password',
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
    );
  }
}

// ========== MODAL: Delete Account ==========
class DeleteAccountModal extends StatelessWidget {
  const DeleteAccountModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icône triste rouge
            Container(
              width: 100.w,
              height: 100.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE53935),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Yeux fermés tristes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: 18.w,
                          height: 3.h,
                          decoration: BoxDecoration(
                            color: Color(0xFF8B1A1A),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Transform.rotate(
                        angle: 0.3,
                        child: Container(
                          width: 18.w,
                          height: 3.h,
                          decoration: BoxDecoration(
                            color: Color(0xFF8B1A1A),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  // Bouche triste
                  Transform.rotate(
                    angle: 3.14159, // 180 degrés en radians
                    child: Container(
                      width: 40.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(0xFF8B1A1A), width: 3.w),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                          topRight: Radius.circular(40.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24.h),

            // Titre
            Text(
              'You\'re deleting your\nBoetia account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.3,
              ),
            ),

            SizedBox(height: 12.h),

            // Description
            Text(
              'This action can\'t be reversed and you\nwill delete all profile and access to the\nBoetia features',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black54,
                height: 1.5,
              ),
            ),

            SizedBox(height: 24.h),

            // Bouton Yes, delete account
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Logique de suppression
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.red, width: 1.5.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Yes, delete account',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ),
            ),

            SizedBox(height: 12.h),

            // Bouton Cancel
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Cancel',
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
    );
  }
}
