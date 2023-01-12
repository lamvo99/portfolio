import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

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
            AppString.SKILLS,
            style: AppThemes.textWhite16W600,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                lable: 'Flutter',
              ),
            ),
            SizedBox(width: AppConstants.DEFAULT_PADDING),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.65,
                lable: 'Firebase',
              ),
            ),
            SizedBox(width: AppConstants.DEFAULT_PADDING),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                lable: 'GraphQL',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String lable;

  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 1),
            duration: AppConstants.DEFAULT_DURATION,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: percentage,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.PRIMARY, //<-- SEE HERE
                  ),
                  backgroundColor: AppColors.DARK,
                ),
                Center(
                  child: Text(
                    (percentage * 100).toInt().toString() + "%",
                    style: AppThemes.textWhite12W400,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: AppConstants.DEFAULT_PADDING / 2),
        Text(
          lable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppThemes.textWhite12W600,
        )
      ],
    );
  }
}

