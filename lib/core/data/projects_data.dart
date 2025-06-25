import 'package:portfolio/models/project.dart';

List<Project> projects = [
  Project(
    id: 3,
    position: 'Flutter Developer | Freelance',
    period: 'Sep/2021 - May/2022',
    location: 'Inventory Control App',
    company: 'VM Tabacos',
    contractType: 'Freelance',
    resumeDescription:
        '''Developed a custom Flutter app for VM Tabacos, a wholesale distributor, to manage sales, purchases, and cash flow. Delivered dashboards and reports that supported operations for over 2 years.''',
    detailedDescription: '''
      As a freelance developer, I created a custom Flutter application for VM Tabacos, a wholesale distributor of tobacco-related products. The app was designed to streamline their business operations — allowing the client to manage inventory, track purchases and sales, control cash flow, and generate detailed reports through a user-friendly mobile interface.
      Built in Flutter and integrated with Firebase Functions (backend by a partner), the solution remained in active use for over two years, helping the client maintain operational control and make informed decisions based on real-time data. It was a full-cycle delivery experience, from design to deployment, that brought lasting value to a small business.
      ''',
    projectIntroduction: '',
    imagePath: '',
    bulletPoints: [
      "Developed a custom Flutter app to manage sales, purchases, and cash flow for VM Tabacos, a wholesale distributor of smoking accessories.",
      "Built dashboards and reporting tools for inventory and transactions, helping the client gain real-time operational control.",
      "Worked in collaboration with a backend developer using Firebase Functions, delivering an integrated solution used actively for over two years.",
      "Delivered the project independently from design to deployment, improving the client's business visibility and decision-making.",
    ],
    habilities: [
      'Flutter',
      'Dart',
      'Firebase Functions',
      'Firestore',
      'RESTful APIs',
      'UI Design',
      'State Management',
      'Git',
    ],
  ),
  Project(
    id: 0,
    position: 'Barchelor Thesis | UNIFEI',
    period: 'may/2024 - may/2025',
    location: 'UNIFEI',
    company: 'UNIFEI',
    contractType: 'None',
    resumeDescription:
        '''Developed a fuzzy logic controller in C for automated water tank level management. Designed the interface and implemented the system on a real lab-scale plant at UNIFEI.''',
    detailedDescription: '''
      For my Bachelor's thesis at UNIFEI, I developed an automation system to control the water level in a tank using fuzzy logic. The project involved designing a decision-making controller in C, implementing it on embedded hardware, and building a custom interface to monitor and adjust system behavior.
      The controller was deployed on a real lab-scale plant and performed with greater precision and stability than expected. This project allowed me to apply advanced control theory in a hands-on environment, combining programming, electronics, and practical engineering to solve a real-world problem.
      ''',
    imagePath: '',
    projectIntroduction: '',
    bulletPoints: [
      "Designed and implemented a fuzzy logic-based automation system to control water tank levels, using C for embedded development.",
      "Developed the full solution including the fuzzy controller, interface design, and integration with a real lab-scale physical plant.",
      "Conducted testing and tuning of the system, achieving performance results that exceeded expectations in stability and responsiveness.",
      "This project applied advanced control theory in a real-world environment and marked the practical culmination of my engineering degree.",
    ],
    habilities: [
      'Embedded C',
      'Fuzzy Logic',
      'PLC Programming',
      'Microcontroller Programming',
      'Automation',
      'Control Systems',
      'Real-Time Systems',
      'Lab Implementation',
    ],
  ),
];
