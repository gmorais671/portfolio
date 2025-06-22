import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/data/constant_strings.dart';
import 'package:portfolio/core/data/projects_data.dart';
import 'package:portfolio/core/theme.dart';
import 'package:portfolio/pages/projects/widgets/project_card_widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ResumeTexts.projectstTitle,
              style: PortfolioThemeStyles.headerName,
            ),
            const SizedBox(
              height: 35,
              child: Divider(),
            ),
            Text(
              ResumeTexts.title3,
              style: PortfolioThemeStyles.headerSection,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final content = projects[index];
                return ProjectCard(
                  content: content,
                  onTap: () {
                    context.pushNamed(
                      'project-details',
                      pathParameters: {
                        'id': content.id.toString(),
                      },
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
