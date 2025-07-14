import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/data/projects_data.dart';
import 'package:portfolio/core/data/resume_data.dart';
import 'package:portfolio/core/responsive_scaffold_shell.dart';
import 'package:portfolio/models/professional_experience.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/pages/contact/contact_page.dart';
import 'package:portfolio/pages/home/home_page.dart';
import 'package:portfolio/pages/projects/detailed_project.dart';
import 'package:portfolio/pages/projects/projects_page.dart';
import 'package:portfolio/pages/resume/detailed_experience.dart';
import 'package:portfolio/pages/resume/resume_page.dart';
import 'package:portfolio/pages/screening/screening_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/screening',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ResponsiveScaffoldShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'screening',
              path: '/screening',
              builder: (BuildContext context, GoRouterState state) {
                return const ScreeningPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(routes: [
          GoRoute(
            name: 'resume',
            path: '/resume',
            builder: (BuildContext context, GoRouterState state) {
              return const ResumePage();
            },
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            name: 'projects',
            path: '/projects',
            builder: (BuildContext context, GoRouterState state) {
              return const ProjectsPage();
            },
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            name: 'contact',
            path: '/contact',
            builder: (BuildContext context, GoRouterState state) {
              return const ContactPage();
            },
          ),
        ]),
      ],
    ),
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
