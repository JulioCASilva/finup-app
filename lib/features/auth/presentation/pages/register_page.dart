import 'package:flutter/material.dart';
import 'package:finup_app/app/theme/app_colors.dart';
import 'package:finup_app/app/theme/app_text_styles.dart';
import 'package:finup_app/core/constants/app_strings.dart';
import 'package:finup_app/shared/widgets/app_header.dart';
import 'package:finup_app/shared/widgets/buttons/tertiary_button.dart';
import 'package:finup_app/features/auth/presentation/widgets/register_form_card.dart';
import 'package:finup_app/app/routes/app_routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppHeader(
              title: AppStrings.registerTitle,
              description: AppStrings.registerDescription,
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: RegisterFormCard(),
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.alreadyHaveAccountQuestion,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),

                const SizedBox(width: 4),

                TertiaryButton(
                  text: AppStrings.enter,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.login);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
