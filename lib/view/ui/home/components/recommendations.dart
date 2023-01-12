import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';
import 'package:portfolio_me/model/export_model.dart';
import 'package:portfolio_me/model/project/project_model.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppConstants.DEFAULT_PADDING / 2),
        Text(
          AppString.RECOMMENDATION,
          style: AppThemes.textWhite16W600,
        ),
        const SizedBox(height: AppConstants.DEFAULT_PADDING),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_recommendations.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: AppConstants.DEFAULT_PADDING),
                child: RecommendationCard(
                  recommendation: demo_recommendations[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final RecommendationModel recommendation;

  const RecommendationCard({
    required this.recommendation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(AppConstants.DEFAULT_PADDING),
      color: AppColors.SECONDARY,
      child: Column(
        children: [
          Text(
            recommendation.name!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppThemes.textWhite14W600,
          ),
          const SizedBox(height: AppConstants.DEFAULT_PADDING),
          Text(
            recommendation.source!,
            style: AppThemes.textBody12W400,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppConstants.DEFAULT_PADDING),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: AppThemes.textPrimary14W400,
          )
        ],
      ),
    );
  }
}
