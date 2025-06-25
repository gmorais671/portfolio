import 'package:flutter/material.dart';

class ContactRedirection {
  final int id;
  final String title;
  final String route;
  final bool linkWeb;
  final IconData iconData;

  ContactRedirection({
    required this.id,
    required this.title,
    required this.route,
    required this.linkWeb,
    required this.iconData,
  });

  @override
  String toString() {
    return 'ContactRedirection $id(title: $title, route: $route, linkWeb: $linkWeb, iconData: $iconData)';
  }

  factory ContactRedirection.fromJson(Map<String, dynamic> json) {
    return ContactRedirection(
      id: json['id'] as int,
      title: json['title'] as String,
      route: json['route'] as String,
      linkWeb: json['linkWeb'] as bool,
      iconData: json['iconData'] as IconData,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'route': route,
      'linkWeb': linkWeb,
      'iconData': iconData,
    };
  }
}
