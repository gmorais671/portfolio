import 'package:portfolio/models/professional_experience.dart';

List<ResumeExperience> professionalExperiences = [
  ResumeExperience(
    id: 0,
    position: 'Flutter Developer | Sinapse Informática',
    period: 'nov/2022 - Currently',
    location: 'Remote',
    company: 'Sinapse Informática',
    contractType: 'Contract',
    resumeDescription:
        '''Flutter Developer responsible for building the Olá Cliente app from scratch, delivering the company's complete mobile product. Worked on API integrations, geolocation, payments, and ongoing support.''',
    detailedDescription: '''
      At Sinapse Informática, I took the lead in transforming an idea into reality. As the main Flutter Developer, I built the Olá Cliente mobile app entirely from the ground up — turning what was once a product in the planning phase into a fully functional, high-impact application.
      I delivered complex features such as real-time geolocation, REST API integrations, online payments, and customer support tools. This project became a milestone for the company, marking its first complete mobile solution and expanding the scope of its digital ecosystem. Beyond Flutter, I also supported Android (Kotlin) apps and backend APIs in ASP.NET, contributing across the full stack with ownership and adaptability.
      ''',
    companyIntroduction:
        'Sinapse Informática Ltda is a Rio de Janeiro based software company founded in 1995 that specializes in developing customizable ERP and mobile solutions. With over 25 years of experience, they have delivered hundreds of projects focused on enhanced control, management, and high ROI. Their flagship products—such as Aniel, Premier, Touch, and Olá Cliente—offer integrated tools for geolocation, route planning, time tracking, digital payments, and client engagement across web and mobile platforms.',
    bulletPoints: [
      'Took the lead in developing the Olá Cliente mobile app, building it from scratch using Flutter and transforming it from a conceptual product into a functional solution.',
      '''Delivered the app's core features by replicating and adapting functions from existing systems, making it a central part of the company's product offering.''',
      'Worked directly with the Product Owner to validate features, prioritize tasks, and ensure that development aligned with business needs and user expectations.',
      '''Delivered the app's core features by replicating and adapting functions from existing systems, making it a central part of the company's product offering.''',
      '''My work brought tangible value to the company by launching its first complete Flutter-based application and helping shape the future of its mobile strategy.''',
      '''Also provide ongoing support for the Flutter app and another Android app built in Kotlin, as well as contributing to backend APIs developed in ASP.NET.''',
    ],
    habilities: [
      'Flutter',
      'Dart',
      'RESTful APIs',
      'WebSockets',
      'Firebase',
      'Provider',
      'GetIt',
      'State Management',
      'CI/CD',
      'ASP.NET',
      'Kotlin',
      'Android Studio',
      'Visual Studio Code',
      'Clean Architecture',
      'Agile',
      'Kanban',
      'Git',
      'GitHub',
      'Team Collaboration',
      'PO Communication',
    ],
    linksDirecionamento: {
      'Olá Cliente App':
          'https://play.google.com/store/apps/details?id=br.com.sinapse.ola&hl=en_US',
    },
    imagePath: 'assets/images/logo_sinapse.jpg',
  ),
  ResumeExperience(
    id: 1,
    position: 'Internship | Mutant',
    period: 'oct/2021 - oct/2022',
    location: 'Remote',
    company: 'Mutant',
    contractType: 'Intern',
    resumeDescription:
        '''Contributed to the development of web and mobile platforms for Mutant Whats, implementing new features and visual improvements using Angular and React Native. Also supported QA efforts to ensure high-quality releases.''',
    detailedDescription: '''
      At Mutant, I joined a multidisciplinary team to help build and evolve the Mutant Whats platform — both web and mobile — using Angular and React Native. Working closely with the Product Owner and other developers, I created new features, redesigned interfaces, and integrated real-time data solutions that went live in production and impacted real users.
      Beyond development, I also played an active role in quality assurance, executing cross-platform testing, bug tracking, and scenario reproduction to ensure a smoother user experience. This experience strengthened my ability to deliver in agile environments and to contribute from coding to validation.
      ''',
    companyIntroduction:
        'Mutant is a digital powerhouse based in São Paulo, operating across 15 countries with over 400 clients and 3,200 professionals. As a "performance company," it builds customized end-to-end digital solutions to enhance customer experience, sales, credit recovery, and omnichannel engagement.',
    bulletPoints: [
      'Contributed to the client acquisition web platform for Mutant Whats, working on database integration, interface redesign, and online payment features.',
      '''Helped develop and maintain the Mutant Whats mobile app (React Native), handling UI adjustments, profile management, and real-time data integrations.''',
      'Performed QA testing on both web and mobile platforms, reproducing error scenarios and ensuring high-quality delivery with fewer bugs.',
      '''Collaborated in teams of 3-4 developers using pair programming and worked closely with the PO for task planning and prioritization.''',
      '''All features and changes I worked on were released to production and used directly by Mutant Whats platform users.''',
    ],
    habilities: [
      'Angular',
      'React Native',
      'JavaScript',
      'TypeScript',
      'HTML',
      'CSS',
      'Git',
      'GitHub',
      'Firebase',
      'RESTful APIs',
      'UX/UI adjustments',
      'Web Platform',
      'Mobile App',
      'QA Testing',
      'Scrum',
      'Pair Programming',
      'Agile',
      'PO Communication',
      'Bug Tracking',
      'Team Collaboration',
    ],
    imagePath: 'assets/images/logo_mutant.png',
  ),
  ResumeExperience(
    id: 2,
    position: 'Frontend Developer | MOVA',
    period: 'feb/2021 - sep/2021',
    location: 'Hybrid - Itajubá-MG, Brazil',
    company: 'MOVA | Credit as a Service',
    contractType: 'Contract',
    resumeDescription:
        '''Worked on the internal web platform for MOVA's system admins using Vue.js. Delivered new features, screens, and client management tools that were deployed to production and used daily by the business team.''',
    detailedDescription: '''
      At MOVA, I joined a large distributed team to help build and maintain the internal web platform used by system administrators to manage client credit operations. Using Vue.js, HTML, CSS, and JavaScript, I developed new screens, integrated essential features like client and payment management, and delivered components that were deployed to production.
      This experience gave me my first real exposure to the professional development workflow — including code collaboration, production deployment, and agile teamwork — and helped me understand the value of consistency, usability, and delivery in a real-world product.
      ''',
    companyIntroduction:
        "MOVA is a pioneering Credit-as-a-Service (CaaS) fintech in Brazil, operating since 2019 as the country's first peer-to-peer lending institution authorized by the Central Bank. In 2023, Serasa Experian acquired a majority stake, fueling its growth and reinforcing its position in the credit ecosystem.",
    bulletPoints: [
      '''Contributed to the development and maintenance of MOVA's internal web platform for credit system administrators.''',
      ' Built new screens, implemented client management features and integrated online payment libraries using Vue.js, HTML, CSS and JavaScript.',
      '''All features and pages developed were deployed to production and used directly by the company's operational team.''',
      '''Worked as part of a large, distributed dev team across Brazil, following technical guidance and collaborating in an agile workflow.''',
      '''It was my first professional experience as a developer, where I learned how to code in a real work environment and deliver value to a live product.''',
    ],
    habilities: [
      'Vue.js',
      'JavaScript',
      'HTML',
      'CSS',
      'Responsive Web',
      'UI Development',
      'Online Payment Integration',
      'Client Management',
      'Agile Workflow',
      'Code Collaboration',
      'Git',
      'GitHub',
      'Team Communication',
    ],
    imagePath: 'assets/images/logo_mova.png',
  ),
  ResumeExperience(
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
    companyIntroduction: '',
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
  ResumeExperience(
    id: 4,
    position: 'Flutter Developer | Digistarts',
    period: 'nov/2020 - jan/2021',
    location: 'Remote',
    company: 'Digistarts',
    contractType: 'Contract',
    resumeDescription:
        '''Worked on the Esfiharia Juventos app as a Junior Flutter Developer. Learned application architecture, implemented features with REST APIs, and collaborated closely with the tech lead through pair programming.''',
    detailedDescription: '''
      At Digistarts, I stepped into the mobile development world as a Junior Flutter Developer and worked closely with the tech lead on the Esfiharia Juventos app. Through constant pair programming, I gained hands-on experience in mobile architecture, state management with MobX, and REST API integrations — all while delivering features to a real commercial product.
      This project marked an important milestone in my growth as a developer. It gave me practical understanding of clean code, teamwork, and how to build user-focused mobile applications using Flutter.
      ''',
    companyIntroduction:
        'Digistarts is a dynamic technology consultancy based in Barueri, Brazil, founded in 2017. With a core team of 11-50 professionals, the company emerged from a background in incubating digital startups and remains true to its innovative roots. Digistarts delivers agile, results-driven services including web and mobile app development, IT outsourcing, Salesforce integrations, RPA, and AI/ML solutions. With a culture focused on simplicity and tangible impact, the firm helps clients drive digital transformation through streamlined, scalable tech.',
    bulletPoints: [
      '''Worked as a Junior Flutter Developer, learning application architecture, code design, and state management using MobX through hands-on experience.''',
      ' Contributed to the development of the Esfiharia Juventos (Mooca-SP) app, integrating RESTful APIs and implementing UI and functionality adjustments.',
      '''Paired with the tech lead and collaborated with the PO, focusing on pair programming and quality delivery in a learning-driven environment.''',
    ],
    habilities: [
      'Flutter',
      'Dart',
      'MobX',
      'RESTful APIs',
      'UI Adjustments',
      'State Management',
      'Mobile App Development',
      'Agile Learning',
      'Pair Programming',
      'Git',
      'GitHub',
      'Clean Code',
      'Team Collaboration',
    ],
    imagePath: 'assets/images/logo_digistarts.png',
  ),
];

List<ResumeExperience> educationExperiences = [
  ResumeExperience(
    id: 5,
    position: 'Control and Automation Engineer | UNIFEI',
    period: 'feb/2018 - aug/2025',
    location: 'Itajubá-MG, Brazil',
    company: 'UNIFEI',
    contractType: 'None',
    resumeDescription:
        '''Bachelor's degree in Control and Automation Engineering at UNIFEI (2018-2025). Participated in Asimov Jr., POLO Hub, and the academic center (CAECA). Developed a fuzzy logic control system as thesis project.''',
    detailedDescription: '''
      I'm pursuing a Bachelor's degree in Control and Automation Engineering at UNIFEI - one of Brazil's top engineering universities - with expected graduation in August 2025. Throughout my academic journey, I actively engaged in extracurricular initiatives that shaped my technical and leadership skills.
      I was a member of Asimov Jr., our junior enterprise, where I led software and automation projects and discovered my passion for app development. I also took part in POLO Hub, mentoring early-stage junior startups, and represented students at the Academic Center (CAECA). My final thesis involved designing a fuzzy logic controller in C for automated water tank level management, implemented and tested on a real lab-scale plant.
      ''',
    companyIntroduction: '''
      The Bachelor's program in Control and Automation Engineering at Universidade Federal de Itajubá (UNIFEI) prepares students to design, implement, and manage automated systems and industrial processes. Graduates gain a strong foundation in electrical, mechanical, and computing disciplines—covering instrumentation, control theory, robotics, PLCs, digital systems, and industrial automation.
      With access to state-of-the-art labs and industry projects, the program emphasizes hands-on learning and strategic thinking, equipping engineers to create solutions that enhance safety, efficiency, and quality of life. It combines rigorous academic coursework with practical applications and multidisciplinary collaboration.
    ''',
    imagePath: 'assets/images/logo_unifei.jpg',
  ),
];

List<ResumeExperience> extracurricularActivities = [
  ResumeExperience(
    id: 6,
    position: 'Asimov Jr | Junior Enterprise',
    period: 'jun/2018 - dec/2020',
    location: 'Itajubá-MG, Brazil',
    company: 'UNIFEI',
    contractType: 'None',
    resumeDescription:
        '''Founding member and President of Asimov Jr., where I led business strategy, goal setting, and delivery. It's where I discovered my passion for building apps — and never stopped.''',
    detailedDescription: '''
      As a founding member, Vice-President, and later President of Asimov Jr., I helped create and lead the junior enterprise for Control and Automation Engineering at UNIFEI through its foundational years. I was responsible for defining business strategy, leading the team, setting and tracking goals, and driving consistent delivery.
      I led with a strong focus on results, purpose, and collaboration, guiding multidisciplinary teams through real-world automation and software projects using agile methodologies. Under my leadership, Asimov Jr. became one of the top-performing junior enterprises at the university — and it was also where I first discovered my passion for building apps, a path that would later lead me into mobile development.
      ''',
    companyIntroduction:
        "Founded in 2018 within UNIFEI's Control & Automation Engineering program, Asimov Jr. is a student-run junior enterprise based in Itajubá-MG. Our mission is to modernize regional enterprises—from small businesses to large industries—by delivering high-quality software, mobile apps, websites, and prototype solutions. Guided by UNIFEI faculty, we executed over 100 customized projects using agile methodologies, focusing on professionalism, commitment, and a strong ownership mindset.",
    imagePath: 'assets/images/logo_asimov.png',
  ),
  ResumeExperience(
    id: 7,
    position: 'Núcleo POLO | Junior Enterprise Mentorship Network',
    period: 'jun/2019 - dec/2019',
    location: 'Itajubá-MG, Brazil',
    company: 'UNIFEI',
    contractType: 'None',
    resumeDescription:
        '''Mentored student startups at POLO Hub, helping build new junior enterprises from the ground up. It taught me to lead through purpose and coach others toward real-world delivery.''',
    detailedDescription: '''
      At POLO Hub, I took part in the regional expansion of the junior enterprise movement by mentoring new student-led organizations. I helped structure and launch teams like Farmalfenas Jr. and Aldeia Jr., supporting them in defining their purpose, operational flow, and cultural foundation.
      My role went beyond guidance — I worked hands-on with aspiring student leaders to translate ideas into action, promoting a culture of entrepreneurship, collaboration, and purpose-driven leadership. This experience deepened my ability to communicate, lead with empathy, and empower others — skills that continue to shape how I work with teams today.
      ''',
    companyIntroduction: ''' 
      POLO Hub is part of UNIFEI's Entrepreneurship Center (CEU), an award-winning innovation hub that empowers students to take entrepreneurial action through education, project execution, and startup collaboration. Hub participants are immersed in hands-on engagement working in coworking spaces and labs to build impactful ventures in junior enterprises.
    ''',
    imagePath: '',
  ),
  ResumeExperience(
    id: 8,
    position: 'CAECA | Academic Center for Control and Automation Engineering',
    period: 'apr/2018 - dec/2018',
    location: 'Itajubá-MG, Brazil',
    company: 'UNIFEI',
    contractType: 'None',
    resumeDescription:
        '''Served at CAECA as a student representative, helping shape academic dialogue and events. It was where I learned to listen, organize, and lead with empathy.''',
    detailedDescription: '''
      As part of CAECA, I represented fellow students in academic discussions, helped organize events, and supported internal initiatives that strengthened our student community. My role involved bridging communication between students and faculty, coordinating academic feedback, and promoting student engagement.
      This experience sharpened my skills in active listening, problem-solving, and leadership with empathy — all essential qualities that continue to influence how I contribute to technical teams and collaborative environments.
      ''',
    companyIntroduction:
        "CAECA is the representative body for students of Control and Automation Engineering at the Federal University of Itajubá (UNIFEI), Itajubá campus. Founded with the aim of supporting and integrating the course's students, CAECA acts as a link between the student body and the coordination, professors, and other university departments.",
    imagePath: '',
  ),
];

List<ResumeExperience> allProfessionalExperiences = [
  ...professionalExperiences,
  ...educationExperiences,
  ...extracurricularActivities
];
