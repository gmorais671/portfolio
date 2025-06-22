import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/data/constant_strings.dart';
import 'package:portfolio/core/data/resume_data.dart';
import 'package:portfolio/core/theme.dart';

import 'widgets/experience_card_widget.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ResumeTexts.resumetTitle,
              style: PortfolioThemeStyles.headerName,
            ),
            const SizedBox(
              height: 25,
              child: Divider(),
            ),
            Text(
              ResumeTexts.title2,
              style: PortfolioThemeStyles.headerSection,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: professionalExperiences.length,
              itemBuilder: (context, index) {
                final content = professionalExperiences[index];
                return ExperienceCard(
                  content: content,
                  onTap: () {
                    context.pushNamed(
                      'experience-details',
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
              child: Divider(),
            ),
            Text(
              ResumeTexts.title4,
              style: PortfolioThemeStyles.headerSection,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: educationExperiences.length,
              itemBuilder: (context, index) {
                final content = educationExperiences[index];
                return ExperienceCard(
                  content: content,
                  onTap: () {
                    context.pushNamed(
                      'experience-details',
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
              child: Divider(),
            ),
            Text(
              ResumeTexts.title5,
              style: PortfolioThemeStyles.headerSection,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: extracurricularActivities.length,
              itemBuilder: (context, index) {
                final content = extracurricularActivities[index];
                return ExperienceCard(
                  content: content,
                  onTap: () {
                    context.pushNamed(
                      'experience-details',
                      pathParameters: {
                        'id': content.id.toString(),
                      },
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
