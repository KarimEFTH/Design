import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EnterPasswordPage extends StatefulWidget {
  const EnterPasswordPage({super.key});

  @override
  State<EnterPasswordPage> createState() => _EnterPasswordPageState();
}

class _EnterPasswordPageState extends State<EnterPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
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
            image: AssetImage('assets/images/backgroundBlanch.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // === AppBar personnalisé ===
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      top: 24.h,
                      bottom: 12.h,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 1.h, color: Color(0xFFEDF0EF)),
                ],
              ),

              // === Contenu principal ===
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),

                      // === Image colorée ===
                      // Center(
                      //   child: Image.asset(
                      //     'assets/images//password_illustration.png',
                      //     width: 280.w,
                      //     height: 140.h,
                      //     fit: BoxFit.contain,
                      //   ),
                      // ),
                      Center(
                        child: SvgPicture.asset(
                          'assets/images/logos/Group25.svg',
                          width: 260.w,
                          height: 148.98.h,
                          fit: BoxFit.contain,
                        ),
                      ),

                      Spacer(),

                      // === Titre ===
                      Text(
                        'Enter password',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),

                      SizedBox(height: 32.h),

                      // === Label "Mot de passe" ===
                      Text(
                        'Mot de passe',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),

                      SizedBox(height: 8.h),

                      // === TextField Password ===
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        style: TextStyle(fontSize: 16.sp, color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Entrez votre mot de passe',
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
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Color(0xFF999999),
                              size: 20.sp,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
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

                      SizedBox(height: 16.h),

                      // === Lien "I forgot my password" ===
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            // Action forgot password
                          },
                          child: Text(
                            'I forgot my password',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 200.h),

                      // === Bouton "Continuer" ===
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
                            'Continuer',
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
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class EnterEmailPage extends StatefulWidget {
//   const EnterEmailPage({super.key});

//   @override
//   State<EnterEmailPage> createState() => _EnterEmailPageState();
// }

// class _EnterEmailPageState extends State<EnterEmailPage> {
//   final TextEditingController _emailController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
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
//             image: AssetImage('assets/images/backgroundBlanch.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // === AppBar personnalisé ===
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
//                       alignment: Alignment.topLeft,
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Icon(
//                           Icons.chevron_left,
//                           color: Colors.black,
//                           size: 24.sp,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(height: 1.h, color: Color(0xFFEDF0EF)),
//                 ],
//               ),

//               // === Contenu principal ===
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 54.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Spacer(),

//                       // === Image colorée ===
//                       Center(
//                         child: SvgPicture.asset(
//                           'assets/images/logos/Group25.svg',
//                           width: 260.w,
//                           height: 148.98.h,
//                           fit: BoxFit.contain,
//                         ),
//                       ),

//                       Spacer(),

//                       // === Titre ===
//                       Text(
//                         'Enter email',
//                         style: TextStyle(
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),

//                       SizedBox(height: 32.h),

//                       // === Label "Email" ===
//                       Text(
//                         'Email',
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           color: Colors.black,
//                           height: 1.5,
//                         ),
//                       ),

//                       SizedBox(height: 8.h),

//                       // === TextField Email ===
//                       TextField(
//                         controller: _emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         style: TextStyle(fontSize: 16.sp, color: Colors.black),
//                         decoration: InputDecoration(
//                           hintText: 'youremail@email.com',
//                           hintStyle: TextStyle(
//                             fontSize: 16.sp,
//                             color: Color(0xFF999999),
//                           ),
//                           filled: true,
//                           fillColor: Colors.white,
//                           contentPadding: EdgeInsets.symmetric(
//                             horizontal: 16.w,
//                             vertical: 12.h,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                             borderSide: BorderSide(
//                               color: Color(0xFF999999),
//                               width: 1.w,
//                             ),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                             borderSide: BorderSide(
//                               color: Color(0xFF999999),
//                               width: 1.w,
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1.w,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 16.h),

//                       // === Lien "I forgot my password" ===
//                       Center(
//                         child: GestureDetector(
//                           onTap: () {
//                             // Action forgot password
//                           },
//                           child: Text(
//                             'I forgot my password',
//                             style: TextStyle(
//                               fontSize: 12.sp,
//                               color: Colors.black,
//                               decoration: TextDecoration.underline,
//                               height: 1.5,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 200.h),

//                       // === Bouton "Continuer" ===
//                       SizedBox(
//                         width: double.infinity,
//                         height: 56.h,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Action continuer
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.r),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: Text(
//                             'Continuer',
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

// -------------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class SplashScreenPage extends StatefulWidget {
//   const SplashScreenPage({super.key});

//   @override
//   State<SplashScreenPage> createState() => _SplashScreenPageState();
// }

// class _SplashScreenPageState extends State<SplashScreenPage> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToNextScreen();
//   }

//   Future<void> _navigateToNextScreen() async {
//     // Attendre 3 secondes avant de naviguer vers la prochaine page
//     await Future.delayed(const Duration(seconds: 3));

//     // Navigation vers la page suivante (décommentez et ajustez selon votre navigation)
//     if (mounted) {
//       // Navigator.pushReplacement(
//       //   context,
//       //   MaterialPageRoute(builder: (context) => NextPage()),
//       // );
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
//             // image: AssetImage('assets/images/backgroundBlanch.png'),
//             image: AssetImage('assets/images/background/splashscreen4x.png'),
//             fit: BoxFit.cover,
//           ),
//         ),

//         // child: Center(
//         //   child: Image.asset(
//         //     'assets/images/splash_logo.png',
//         //     width: 280.w,
//         //     height: 280.h,
//         //     fit: BoxFit.contain,
//         //   ),
//         // ),
//         child: Center(
//           child: SvgPicture.asset(
//             'assets/images/logos/Frame112.svg',
//             width: 286.47.w,
//             height: 248.66.h,
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     );
//   }
// }

// ------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

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
//           child: Padding(
//             padding: EdgeInsets.only(
//               left: 32.w,
//               right: 32.w,
//               bottom: 54.h,
//               top: 40.h,
//             ),
//             child: Column(
//               children: [
//                 SizedBox(height: 32.h),
//                 // Spacer(),

//                 // === Illustration en haut ===
//                 // Image.asset(
//                 //   'assets/images/login_illustration.png',
//                 //   width: 260.w,
//                 //   height: 140.h,
//                 //   fit: BoxFit.contain,
//                 // ),
//                 SvgPicture.asset(
//                   'assets/images/logos/Group25.svg',
//                   width: 218.87.w,
//                   height: 118.h,
//                   fit: BoxFit.contain,
//                 ),

//                 SizedBox(height: 40.h),

//                 // === Texte principal ===
//                 RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     style: TextStyle(
//                       fontSize: 24.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       height: 1.3,
//                     ),
//                     children: [
//                       TextSpan(text: 'Corrige. Révise.\n'),
//                       TextSpan(text: 'Comprends.\n'),
//                       TextSpan(
//                         text: 'Boetia, l\'assistant\nscolaire intelligent.',
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 48.h),

//                 // === Badge utilisateurs avec étoiles ===
//                 // Image.asset(
//                 //   'assets/images/users_badge.png',
//                 //   width: 240.w,
//                 //   height: 100.h,
//                 //   fit: BoxFit.contain,
//                 // ),
//                 SvgPicture.asset(
//                   'assets/images/logos/Laurelgroup.svg',
//                   width: 163.w,
//                   height: 103.h,
//                   fit: BoxFit.contain,
//                 ),

//                 Spacer(),

//                 // === Bouton "Continue with Email" ===
//                 SizedBox(
//                   width: double.infinity,
//                   height: 56.h,
//                   child: OutlinedButton.icon(
//                     onPressed: () {
//                       // Action continuer avec email
//                     },
//                     style: OutlinedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       side: BorderSide(color: Colors.black, width: 1.w),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                     ),
//                     icon: Icon(
//                       Icons.email_outlined,
//                       color: Colors.black,
//                       size: 20.sp,
//                     ),
//                     label: Text(
//                       'Continue with Email',
//                       style: TextStyle(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 8.h),

//                 // === Bouton "Continue with Google" ===
//                 SizedBox(
//                   width: double.infinity,
//                   height: 56.h,
//                   child: OutlinedButton(
//                     onPressed: () {
//                       // Action continuer avec Google
//                     },
//                     style: OutlinedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       side: BorderSide(color: Colors.black, width: 1.w),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.r),
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           'assets/images/google_logo.png',
//                           width: 20.w,
//                           height: 20.h,
//                         ),
//                         SizedBox(width: 8.w),
//                         Text(
//                           'Continue with Google',
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 16.h),

//                 // === Texte légal ===
//                 RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     style: TextStyle(
//                       fontSize: 12.sp,
//                       color: Color(0xFF828282),
//                       height: 1.5,
//                     ),
//                     children: [
//                       TextSpan(text: 'By clicking continue, you agree to our '),
//                       TextSpan(
//                         text: 'Terms of Service',
//                         style: TextStyle(
//                           decoration: TextDecoration.underline,
//                           color: Colors.black,
//                         ),
//                       ),
//                       TextSpan(text: ' and '),
//                       TextSpan(
//                         text: 'Privacy Policy',
//                         style: TextStyle(
//                           decoration: TextDecoration.underline,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 // SizedBox(height: 32.h),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
