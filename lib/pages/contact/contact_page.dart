import 'package:flutter/material.dart';
import 'package:portfolio/core/data/constant_strings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
                  backgroundImage:
                      const AssetImage('assets/images/20250621b_portfolio.jpg'),
                ),
              ),
            ),
            Text(
              ResumeTexts.contactTitle,
              style: headerName,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton.icon(
              icon: const Icon(FontAwesomeIcons.github),
              label: const Text('My portfolio on GitHub'),
              onPressed: () => _launchUrl('https://github.com/gmorais671'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              icon: const Icon(FontAwesomeIcons.linkedinIn),
              label: const Text('My LinkedIn profile'),
              onPressed: () => _launchUrl(
                  'https://www.linkedin.com/in/gabriel-morais-marcondes/'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              icon: const Icon(FontAwesomeIcons.whatsapp),
              label: const Text('Chat on Whatsapp'),
              onPressed: () => _launchUrl('https://wa.me/5519991261738'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.email),
              label: const Text('Send me an Email'),
              onPressed: () => _launchUrl('mailto:gmorais671@gmail.com'),
            ),
          ],
        ),
      ),
    );
  }
}

const TextStyle headerName =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w900);
