import 'package:flutter/material.dart';
import 'package:finup_app/app/theme/app_colors.dart';
import 'package:finup_app/core/constants/app_strings.dart';
import 'package:finup_app/shared/widgets/buttons/primary_button.dart';
import 'package:finup_app/shared/widgets/buttons/tertiary_button.dart';
import 'package:finup_app/shared/widgets/inputs/app_text_field.dart';
import 'package:finup_app/shared/widgets/inputs/password_text_field.dart';

class LoginFormCard extends StatelessWidget {
  const LoginFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.cardBorder),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            label: AppStrings.email,
            hint: AppStrings.emailHint,
            icon: Icons.email_outlined,
          ),

          const SizedBox(height: 20),

          PasswordTextField(label: AppStrings.password, hint: '••••••••'),

          const SizedBox(height: 8),

          Align(
            alignment: Alignment.centerRight,
            child: TertiaryButton(
              text: AppStrings.forgotPassword,
              onPressed: () {},
            ),
          ),

          const SizedBox(height: 24),

          PrimaryButton(text: AppStrings.login, onPressed: () {}),
        ],
      ),
    );
  }
}
