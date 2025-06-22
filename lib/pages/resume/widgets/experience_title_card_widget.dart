import 'package:flutter/material.dart';

class ExperienceTitleCard extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String imagePath;

  const ExperienceTitleCard({
    super.key,
    required this.jobTitle,
    required this.companyName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Alinha os itens nas extremidades
          children: [
            // Coluna para os textos à esquerda
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Alinha os textos à esquerda
                children: [
                  Text(
                    jobTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4), // Pequeno espaço entre os textos
                  Text(
                    companyName,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            imagePath.isNotEmpty
                ? const SizedBox(width: 16)
                : Container(), // Espaço entre o texto e a imagem

            // Container para a imagem à direita
            imagePath.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(
                        10.0), // Bordas arredondadas para a imagem
                    child: Image.asset(
                      imagePath,
                      width: 64, // Largura fixa para a imagem
                      height: 64, // Altura fixa para a imagem
                      fit: BoxFit.cover, // Garante que a imagem cubra o espaço
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
