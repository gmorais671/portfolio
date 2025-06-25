import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme.dart';
import 'package:portfolio/models/professional_experience.dart';
import 'package:portfolio/pages/resume/widgets/experience_title_card_widget.dart';

class DetailedExperience extends StatelessWidget {
  final ResumeExperience experience;
  const DetailedExperience({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Adicione seus widgets de experiência detalhada aqui
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExperienceTitleCard(
                companyName: experience.company,
                imagePath: experience.imagePath,
                jobTitle: experience.position,
              ),
            ),
            // Exemplo de item de experiência
            experience.companyIntroduction.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(experience.companyIntroduction),
                  )
                : Container(),
            const SizedBox(
              height: 25,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: experience.bulletPoints.length,
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
                          experience.bulletPoints[index],
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
            experience.habilities.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26.0, vertical: 8.0),
                    child: Text(
                      'Skills & Techs:',
                      style: PortfolioThemeStyles.headerSection,
                    ),
                  )
                : Container(),
            experience.habilities.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Wrap(
                      spacing: 4.0, // Espaçamento horizontal entre os chips
                      runSpacing: kIsWeb
                          ? 5.0
                          : 0.0, // Espaçamento vertical entre as linhas de chips
                      alignment: WrapAlignment.center,
                      children: experience.habilities
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
                  )
                : Container(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
