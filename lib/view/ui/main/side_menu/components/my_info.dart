import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: AppColors.SECONDARY,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage(AppImages.AVATAR_IMAGE),
            ),
            Text(AppString.USER_NAME,
                style: AppThemes.textWhite16W600),
            Text(
              AppString.MAJOR_INFO,
              style: AppThemes.textBody14W400,
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}