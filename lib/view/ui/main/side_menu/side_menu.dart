import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';
import 'package:portfolio_me/view/ui/main/side_menu/components/coding.dart';
import 'package:portfolio_me/view/ui/main/side_menu/components/knowledge.dart';
import 'package:portfolio_me/view/ui/main/side_menu/components/my_info.dart';
import 'package:portfolio_me/view/ui/main/side_menu/components/skill_widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(AppConstants.DEFAULT_PADDING),
                child: Column(
                  children: [
                    AreaInforText(
                      title: AppString.CITY,
                      text: 'Da Nang',
                    ),
                    AreaInforText(
                      title: AppString.COUNTRY,
                      text: 'Viet Nam',
                    ),
                    AreaInforText(
                      title: AppString.AGE,
                      text: '24',
                    ),
                    Skills(),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(AppString.DOWNLOAD_CV, style: AppThemes.textBody14W400,),
                          SizedBox(width: 5),
                          SvgPicture.asset(AppImages.DOWNLOAD_ICON)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: AppConstants.DEFAULT_PADDING),
                      color: AppColors.SECONDARY,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Image.asset(AppImages.LINKED_ICON)),
                          IconButton(onPressed: (){}, icon: Image.asset(AppImages.FACEBOOK_ICON)),
                          IconButton(onPressed: (){}, icon: Image.asset(AppImages.GITHUB_ICON)),
                          IconButton(onPressed: (){}, icon: Image.asset(AppImages.INSTAGRAM_ICON)),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AreaInforText extends StatelessWidget {
  final String title;
  final String text;

  const AreaInforText({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.DEFAULT_PADDING / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppThemes.textWhite14W400),
          Text(text, style: AppThemes.textWhite14W600)
        ],
      ),
    );
  }
}
