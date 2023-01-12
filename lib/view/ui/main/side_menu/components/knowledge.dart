import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppConstants.DEFAULT_PADDING),
          child: Text(
            'Knowledge',
            style: AppThemes.textWhite14W400,
          ),
        ),
        KnowledgeText(text: 'Flutter, Dart'),
        KnowledgeText(text: 'Restful API, GraphQL'),
        KnowledgeText(text: 'Firebase Services'),
        KnowledgeText(text: 'GIT Knowledge'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  final String text;
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.DEFAULT_PADDING / 2),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_outline_outlined,
            color: AppColors.PRIMARY,
          ),
          SizedBox(width: AppConstants.DEFAULT_PADDING / 2),
          Text(text, style: AppThemes.textBody14W400,)
        ],
      ),
    );
  }
}