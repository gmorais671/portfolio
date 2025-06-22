class Project {
  final int id;
  final String position;
  final String period;
  final String location;
  final String company;
  final String contractType;
  final String resumeDescription;
  final String detailedDescription;
  final String imagePath;
  final String projectIntroduction;
  List<String> bulletPoints = List.empty(growable: true);
  List<String> habilities = List.empty(growable: true);
  Map<String, String> linksDirecionamento = {};

  Project({
    required this.id,
    required this.position,
    required this.period,
    required this.location,
    required this.imagePath,
    required this.projectIntroduction,
    required this.company,
    required this.contractType,
    required this.resumeDescription,
    required this.detailedDescription,
    List<String>? bulletPoints,
    List<String>? habilities,
    Map<String, String>? linksDirecionamento,
  }) {
    this.bulletPoints = bulletPoints ?? [];
    this.habilities = habilities ?? [];
    this.linksDirecionamento = linksDirecionamento ?? {};
  }

  @override
  String toString() {
    return 'Project(id: $id, position: $position, period: $period, location: $location, company: $company, contractType: $contractType, resumeDescription: $resumeDescription, detailedDescription: $detailedDescription, bulletPoints: $bulletPoints, habilities: $habilities, linksDirecionamento: $linksDirecionamento)';
  }

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'] as int,
      position: json['position'] as String,
      period: json['period'] as String,
      location: json['location'] as String,
      company: json['company'] as String,
      contractType: json['contractType'] as String,
      resumeDescription: json['resumeDescription'] as String,
      detailedDescription: json['detailedDescription'] as String,
      imagePath: json['imagePath'] as String,
      projectIntroduction: json['projectIntroduction'] as String,
      bulletPoints: (json['bulletPoints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      habilities: (json['habilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      linksDirecionamento:
          (json['linksDirecionamento'] as Map<String, dynamic>?)
              ?.map((key, value) => MapEntry(key, value as String)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'position': position,
      'period': period,
      'location': location,
      'company': company,
      'contractType': contractType,
      'resumeDescription': resumeDescription,
      'detailedDescription': detailedDescription,
      'bulletPoints': bulletPoints,
      'habilities': habilities,
      'linksDirecionamento': linksDirecionamento,
    };
  }
}
