import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/data/constant_strings.dart';
import 'package:portfolio/core/data/contact_redirections.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.platformDefault)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: !kIsWeb ? double.infinity : null,
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            !kIsWeb
                ? Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey[300],
                        backgroundImage: const AssetImage(
                            'assets/images/20250621b_portfolio.jpg'),
                      ),
                    ),
                  )
                : Container(),
            Text(
              ResumeTexts.contactTitle,
              style: headerName,
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: redirections.length,
              itemBuilder: (context, index) {
                final redirection = redirections[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ElevatedButton.icon(
                    icon: Icon(redirection.iconData),
                    label: Text(redirection.title),
                    onPressed: () => _launchUrl(redirection.route),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

const TextStyle headerName =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w900);
