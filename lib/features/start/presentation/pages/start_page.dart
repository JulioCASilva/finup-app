import 'package:flutter/material.dart';
import 'package:finup_app/app/theme/app_colors.dart';
import 'package:finup_app/core/constants/app_strings.dart';
import 'package:finup_app/shared/widgets/app_header.dart';
import 'package:finup_app/features/start/presentation/widgets/start_card.dart';
import 'package:finup_app/shared/widgets/buttons/primary_button.dart';
import 'package:finup_app/shared/widgets/buttons/secondary_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppHeader(
              title: AppStrings.startTitle,
              description: AppStrings.startDescription,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.2,
                children: const [
                  StartCard(
                    icon: Icons.account_balance_wallet_outlined,
                    iconColor: AppColors.expenseIcon,
                    iconBackgroundColor: AppColors.expenseIconBackground,
                    title: AppStrings.startExpensesTitle,
                  ),

                  StartCard(
                    icon: Icons.track_changes_rounded,
                    iconColor: AppColors.goalIcon,
                    iconBackgroundColor: AppColors.goalIconBackground,
                    title: AppStrings.startGoalsTitle,
                  ),

                  StartCard(
                    icon: Icons.trending_up_rounded,
                    iconColor: AppColors.investmentIcon,
                    iconBackgroundColor: AppColors.investmentIconBackground,
                    title: AppStrings.startInvestmentsTitle,
                  ),

                  StartCard(
                    icon: Icons.group_outlined,
                    iconColor: AppColors.sharedGoalIcon,
                    iconBackgroundColor: AppColors.sharedGoalIconBackground,
                    title: AppStrings.startSharedGoalTitle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Column(
                children: [
                  PrimaryButton(
                    text: AppStrings.createAccount,
                    icon: Icons.arrow_forward,
                    onPressed: () {},
                  ),

                  const SizedBox(height: 12),

                  SecondaryButton(
                    text: AppStrings.alreadyHaveAccount,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
