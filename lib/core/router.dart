import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/data/projects_data.dart';
import 'package:portfolio/core/data/resume_data.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/models/professional_experience.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/pages/projects/detailed_project.dart';
import 'package:portfolio/pages/resume/detailed_experience.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      name: 'experience-details',
      path: '/experience/:id',
      builder: (BuildContext context, GoRouterState state) {
        final int xpId = int.parse(state.pathParameters['id']!);
        final ResumeExperience xp =
            allProfessionalExperiences.firstWhere((xp) => xp.id == xpId);
        return DetailedExperience(
          experience: xp,
        );
      },
    ),
    GoRoute(
      name: 'project-details',
      path: '/project/:id',
      builder: (BuildContext context, GoRouterState state) {
        final int projId = int.parse(state.pathParameters['id']!);
        final Project proj = projects.firstWhere((pr) => pr.id == projId);
        return DetailedProject(
          project: proj,
        );
      },
    ),
  ],
);
