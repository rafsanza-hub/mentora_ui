import 'package:flutter/material.dart';
import 'package:mentora/core/constants/app_text_styles.dart';
import 'package:mentora/widgets/app_chip.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Payment Method',
                  style: AppTextStyles.headlineBold,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 27),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppChip('Automatic', isSelected: true),
                  AppChip('Manual', isSelected: false),
                ],
              ),
              SizedBox(height: 31),
              Text('Payment Details', style: AppTextStyles.title3Bold),
              SizedBox(height: 6),
              _buildDetail('Price Course', '\$ 243'),
              const SizedBox(height: 10),
              _buildDetail('Discount', '-'),
              const SizedBox(height: 10),
              _buildDetail('Service fee for Student', '\$ 1'),
              const SizedBox(height: 10),
              _buildDetail('Total Price', '\$ 244'),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buy Course by Midtrans',
                  style: AppTextStyles.bodyBold.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buildDetail(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.footnoteRegular),
        Text(value, style: AppTextStyles.footnoteRegular),
      ],
    );
  }
}
