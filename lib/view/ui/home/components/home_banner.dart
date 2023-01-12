import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';
import 'package:portfolio_me/services/responsive/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.BACKGROUND_IMAGE,
            fit: BoxFit.cover,
          ),
          Container(
            color: AppColors.DARK.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.DEFAULT_PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppString.ART_SPACE,
                  style: Responsive.isDesktop(context)
                      ? AppThemes.textWhite16W400
                      : AppThemes.textWhite14W400,
                ),
                if (Responsive.isMobileLarge(context))
                  SizedBox(height: AppConstants.DEFAULT_PADDING / 2),
                MyBuildAnimationText(),
                SizedBox(height: AppConstants.DEFAULT_PADDING),
                if (!Responsive.isMobileLarge(context))ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppConstants.DEFAULT_PADDING * 2,
                        vertical: AppConstants.DEFAULT_PADDING,
                      ),
                      backgroundColor: AppColors.PRIMARY),
                  child: Text(
                    AppString.EXPLORE_NOW,
                    style: AppThemes.textWhite14W400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimationText extends StatelessWidget {
  const MyBuildAnimationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppThemes.textWhite14W400,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: AppConstants.DEFAULT_PADDING / 2),
          Text(AppString.I_BUILD),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: AppConstants.DEFAULT_PADDING / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          AppString.RESPONSIVE_WEB_AND_MOBILE,
          speed: AppConstants.DEFAULT_DURATION,
        ),
        TyperAnimatedText(
          AppString.PGO_APP,
          speed: AppConstants.DEFAULT_DURATION,
        ),
        TyperAnimatedText(
          AppString.NOTE_APP,
          speed: AppConstants.DEFAULT_DURATION,
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(text: "flutter", style: TextStyle(color: AppColors.PRIMARY)),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
