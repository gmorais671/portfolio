import 'package:flutter/material.dart';
import 'package:portfolio/core/data/constant_strings.dart';
import 'package:portfolio/core/theme.dart';

class ScreeningPage extends StatelessWidget {
  const ScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ResumeTexts.name,
              style: PortfolioThemeStyles.headerName,
            ),
            const SizedBox(
              height: 15,
              child: Divider(),
            ),
            Text(
              ResumeTexts.title1,
              style: PortfolioThemeStyles.headerSection,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              ResumeTexts.summary,
              style: PortfolioThemeStyles.content,
            ),
          ],
        ),
      ),
    );
  }
}
