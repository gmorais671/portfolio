import 'package:flutter/material.dart';
import 'package:portfolio/core/theme.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/pages/resume/widgets/experience_title_card_widget.dart';

class DetailedProject extends StatelessWidget {
  final Project project;
  const DetailedProject({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    const double breakpoint = 700;

    final bool useDesktopLayout = width > breakpoint;

    final double horizontalPadding = (width > 1250)
        ? (width * .2)
        : (width > 700)
            ? (width * .07)
            : 0.0;

    return Scaffold(
      appBar: useDesktopLayout ? null : AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Adicione seus widgets de experiência detalhada aqui
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: horizontalPadding),
              child: ExperienceTitleCard(
                companyName: project.company,
                imagePath: project.imagePath,
                jobTitle: project.position,
              ),
            ),
            // Exemplo de item de experiência
            project.projectIntroduction.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(project.projectIntroduction),
                  )
                : Container(),
            const SizedBox(
              height: 25,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: project.bulletPoints.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('• ', style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: Text(
                          project.bulletPoints[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
            // Exemplo de item de experiência
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
              child: Text(
                'Skills & Techs:',
                style: PortfolioThemeStyles.headerSection,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Wrap(
                spacing: 4.0, // Espaçamento horizontal entre os chips
                runSpacing:
                    0.0, // Espaçamento vertical entre as linhas de chips
                alignment: WrapAlignment.center,
                children: project.habilities
                    .map((tech) => Chip(
                          label: Text(
                            tech,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primary, // Cor de fundo do chip
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Bordas arredondadas
                            side: BorderSide.none, // Sem borda
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
