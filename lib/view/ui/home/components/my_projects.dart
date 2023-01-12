import 'package:flutter/material.dart';
import 'package:portfolio_me/internal/constants/export_constants.dart';
import 'package:portfolio_me/model/project/project_model.dart';
import 'package:portfolio_me/services/responsive/responsive.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppConstants.DEFAULT_PADDING / 2),
        Text(
          AppString.MY_PROJECTS,
          style: AppThemes.textWhite16W600,
        ),
        const SizedBox(height: AppConstants.DEFAULT_PADDING),
        Responsive(
          mobile: ProjectGridView(crossAxisCount: 1, childAspectRatio: 1.7,),
          mobileLarge: ProjectGridView(crossAxisCount: 2),
          tablet: ProjectGridView(childAspectRatio: 1.1),
          desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: AppConstants.DEFAULT_PADDING,
        mainAxisSpacing: AppConstants.DEFAULT_PADDING,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return ProjectCard(project: demo_projects[index]);
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel project;

  const ProjectCard({
    required this.project,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.DEFAULT_PADDING),
      color: AppColors.SECONDARY,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppThemes.textWhite14W600,
          ),
          const SizedBox(height: AppConstants.DEFAULT_PADDING),
          Text(
            project.description!,
            style: AppThemes.textBody12W400,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              AppString.READ_MORE,
              style: AppThemes.textPrimary14W400,
            ),
          ),
        ],
      ),
    );
  }
}
