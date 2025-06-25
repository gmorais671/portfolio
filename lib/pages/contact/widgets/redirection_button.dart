import 'package:flutter/material.dart';
import 'package:portfolio/models/contact_redirection.dart';

class RedirectionButton extends StatelessWidget {
  const RedirectionButton(
      {super.key, required this.redirection, required this.launchUrl});

  final ContactRedirection redirection;
  final void Function() launchUrl;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(redirection.iconData),
      label: Text(redirection.title),
      onPressed: launchUrl,
    );
  }
}
