import 'package:flutter/material.dart';
import 'package:portfolio/core/theme.dart';
import 'package:portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  ProjectCard({
    super.key,
    required this.content,
    required this.onTap,
  });

  final Project content;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content.position,
                style: PortfolioThemeStyles.headerProfessionalExperience,
              ),
              Text(
                '${content.period} • ${content.location}',
                style: PortfolioThemeStyles.contentProfessionalExperience
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              Text(
                content.resumeDescription,
                style: PortfolioThemeStyles.contentProfessionalExperience,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
