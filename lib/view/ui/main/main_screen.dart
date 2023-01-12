import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';
import 'package:portfolio_me/services/responsive/responsive.dart';
import 'package:portfolio_me/view/ui/main/side_menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;

  const MainScreen({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: AppColors.BACKGROUND,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: AppConstants.MAX_WIDTH),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: AppConstants.DEFAULT_PADDING),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [...children],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
