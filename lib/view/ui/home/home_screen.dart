import 'package:flutter/material.dart';
import 'package:portfolio_me/view/ui/home/components/home_banner.dart';
import 'package:portfolio_me/view/ui/home/components/my_projects.dart';
import 'package:portfolio_me/view/ui/home/components/recommendations.dart';
import 'package:portfolio_me/view/ui/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        MyProject(),
        Recommendations(),
        // Recommendations(),
      ],
    );
  }
}