import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppConstants.DEFAULT_PADDING),
          child: Text(
            AppString.CODING,
            style: AppThemes.textWhite16W600,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.85, lable: "Dart"),
        AnimatedLinearProgressIndicator(percentage: 0.56, lable: "Java"),
        AnimatedLinearProgressIndicator(percentage: 0.3, lable: "Android"),
        AnimatedLinearProgressIndicator(percentage: 0.46, lable: "Python"),
        AnimatedLinearProgressIndicator(percentage: 0.2, lable: "NodeJS"),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double percentage;
  final String lable;

  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.DEFAULT_PADDING/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: AppConstants.DEFAULT_DURATION,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lable,
                  style: AppThemes.textWhite12W600,
                ),
                Text(
                  "${(value * 100).toInt().toStringAsFixed(0)} %",
                  style: AppThemes.textWhite12W600,
                ),
              ],
            ),
            SizedBox(height: AppConstants.DEFAULT_PADDING / 2),
            LinearProgressIndicator(
              value: percentage,
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.PRIMARY, //<-- SEE HERE
              ),
              backgroundColor: AppColors.DARK,
            ),
          ],
        ),
      ),
    );
  }
}
