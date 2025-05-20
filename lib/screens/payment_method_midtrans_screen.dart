import 'package:flutter/material.dart';
import 'package:mentora/core/constants/app_colors.dart';
import 'package:mentora/core/constants/app_text_styles.dart';

class PaymentMethodMidtransScreen extends StatelessWidget {
  const PaymentMethodMidtransScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Payment Method by Midtrans',
                    style: AppTextStyles.headlineBold,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price',
                      style: AppTextStyles.calloutBold,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Choose within ',
                            style: AppTextStyles.footnoteRegular.copyWith(
                              color: AppColors.greySecondary,
                            ),
                          ),
                          TextSpan(
                            text: '23:58:57',
                            style: AppTextStyles.footnoteRegular.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '\$244',
                  style: AppTextStyles.title1Bold,
                ),
                const SizedBox(height: 8),
                const Divider(color: AppColors.greySecondary),
                const SizedBox(height: 12),
                Text(
                  'Your order',
                  style: AppTextStyles.calloutBold,
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 Front End HTML, CSS',
                      style: AppTextStyles.footnoteRegular.copyWith(
                        color: AppColors.greyText,
                      ),
                    ),
                    Text(
                      '\$244',
                      style: AppTextStyles.footnoteRegular,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(color: AppColors.greySecondary),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: AppTextStyles.calloutBold,
                    ),
                    Text(
                      '\$244',
                      style: AppTextStyles.calloutBold,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: AppColors.greySecondary),
                const SizedBox(height: 12),
                Text(
                  'Costumer Details',
                  style: AppTextStyles.calloutBold,
                ),
                const SizedBox(height: 4),
                Text(
                  'Fahmi Haecal',
                  style: AppTextStyles.footnoteRegular.copyWith(
                    color: AppColors.greyText,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(color: AppColors.greySecondary),
                const SizedBox(height: 12),
                Text(
                  'Select Method',
                  style: AppTextStyles.calloutBold,
                ),
                const SizedBox(height: 4),
                Text(
                  'e-wallet',
                  style: AppTextStyles.footnoteBold,
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildPaymentOption('https://placehold.co/49x14', 60, 40),
                    _buildPaymentOption('https://placehold.co/50x28', 60, 40),
                    _buildPaymentOption('https://placehold.co/54x11', 60, 40),
                    _buildPaymentOption('https://placehold.co/28x28', 60, 40),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(color: AppColors.greySecondary),
                const SizedBox(height: 12),
                Text(
                  'Bank',
                  style: AppTextStyles.footnoteBold,
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildPaymentOption('https://placehold.co/36x28', 60, 40),
                    _buildPaymentOption('https://placehold.co/48x25', 60, 40),
                    _buildPaymentOption('https://placehold.co/50x17', 60, 40),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(color: AppColors.greySecondary),
                const SizedBox(height: 24),
                Text(
                  'Midtrans is an online payment solution provider company based in Indonesia. This company provides online payment services that are integrated with various banks and financial service providers in Indonesia, making it easier for users to make transactions safely and easily.',
                  style: AppTextStyles.caption2Regular.copyWith(
                    color: AppColors.greyText,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentOption(String imageUrl, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
