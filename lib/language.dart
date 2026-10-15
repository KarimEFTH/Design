import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageSelectionDesign extends StatelessWidget {
  final String? selectedLanguage;
  final bool isLoading;
  final Function(String) onLanguageSelected;
  final VoidCallback onContinuePressed;

  const LanguageSelectionDesign({
    Key? key,
    required this.selectedLanguage,
    required this.isLoading,
    required this.onLanguageSelected,
    required this.onContinuePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.fromLTRB(32.w, 100.h, 32.w, 54.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),

                // === Titre ===
                Text(
                  'Sélectionnez votre langue',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),

                SizedBox(height: 32.h),

                // === Bouton "Française" ===
                _buildLanguageButton(label: 'Française', value: 'fr'),

                SizedBox(height: 16.h),

                // === Bouton "Anglais" ===
                _buildLanguageButton(label: 'Anglais', value: 'en'),

                SizedBox(height: 16.h),

                // === Bouton "Espagnol" ===
                _buildLanguageButton(label: 'Espagnol', value: 'es'),

                SizedBox(height: 16.h),

                // === Bouton "Portugais" ===
                _buildLanguageButton(label: 'Portugais', value: 'pt'),

                Spacer(),

                // === Bouton "Continuer" ===
                SizedBox(
                  width: double.infinity,
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : onContinuePressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      disabledBackgroundColor: Colors.black.withOpacity(0.6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      elevation: 0,
                    ),
                    child: isLoading
                        ? SizedBox(
                            width: 20.w,
                            height: 20.h,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : Text(
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
      ),
    );
  }

  Widget _buildLanguageButton({required String label, required String value}) {
    final bool isSelected = selectedLanguage == value;

    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: OutlinedButton(
        onPressed: () => onLanguageSelected(value),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: isSelected
              ? BorderSide(color: Colors.black, width: 2.5.w)
              : BorderSide(color: Colors.black, width: 1.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      ),
    );
  }
}
