import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/contact_redirection.dart';

List<ContactRedirection> redirections = [
  ContactRedirection(
    id: 0,
    title: 'My portfolio on GitHub',
    route: 'https://github.com/gmorais671',
    linkWeb: true,
    iconData: FontAwesomeIcons.github,
  ),
  ContactRedirection(
    id: 1,
    title: 'My LinkedIn profile',
    route: 'https://www.linkedin.com/in/gabriel-morais-marcondes/',
    linkWeb: true,
    iconData: FontAwesomeIcons.linkedinIn,
  ),
  ContactRedirection(
    id: 2,
    title: 'Chat on Whatsapp',
    route: 'https://wa.me/5519991261738',
    linkWeb: false,
    iconData: FontAwesomeIcons.whatsapp,
  ),
  ContactRedirection(
    id: 3,
    title: 'Send me an Email',
    route: 'mailto:gmorais671@gmail.com',
    linkWeb: false,
    iconData: Icons.email,
  ),
  ContactRedirection(
    id: 4,
    title: 'Policy Privacy',
    route: 'https://github.com/gmorais671/portfolio_privacy_policy',
    linkWeb: true,
    iconData: Icons.policy,
  ),
  ContactRedirection(
    id: 5,
    title: 'Download my resume',
    route:
        'https://drive.google.com/drive/folders/1rCQBTUKUdcjo_8ILfLcpO0osilDrLkHl?usp=sharing',
    linkWeb: true,
    iconData: Icons.download_done_rounded,
  ),
];
