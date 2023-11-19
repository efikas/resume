import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:resume/app/colors.dart';
import 'package:resume/core/models/items/experience.dart';
import 'package:resume/core/models/items/skill.dart';

const String PARSING_ERROR = 'Parsing Error, Contact Devs';
const int SERVER_OKAY = 200;
const int CREATED = 201;

// const String BOX_NAME = "resume";

const String GIT_TOKEN = "input token here";
const String BASE_URL = "https://api.github.com/";

const List<Map<String, String>> educations = [
  {"title": "PG Diploma in Computer Science, Federal University Of Technology Minna", "date": "Nov 2016 - Dec 2018", "course": "Computer Science"},
  {
    "title": "Bachelor of Technology, Physics, Federal University Of Technology Minna",
    "date": "Nov 2008 - Mar 2014",
    "course": "Physics with Electronics"
  },
];

const List<Map<String, dynamic>> certifications = [
  {"title": "Blockchain Specialization", "host": "Coursera", "link": "https://www.coursera.org/account/accomplishments/specialization/certificate/45FPUNADAE99", "year": "2022", "color": AppColors.yellow},
  {"title": "Amazon Web Services Certified Cloud Practitioner", "host": "AWS", "link": "https://www.credly.com/badges/aa06b83e-9b00-4084-b80b-8084dca33a30", "year": "2021", "color": AppColors.blue},
  {"title": "Certified Team Manager", "host": "LinkedIn", "link": "", "year": "2021", "color": AppColors.lightYellow},
  {"title": "Front End Web Development With React", "host": "Coursera", "link": "https://www.coursera.org/account/accomplishments/certificate/JJ4RKQYHUN7Z", "year": "2019", "color": AppColors.cyanAccent},
];

List<SkillModel> skills = [
  SkillModel(title: "Dart", imageUrl: "assets/images/dart.png", color: AppColors.green),
  SkillModel(title: "Flutter", imageUrl: "assets/images/flutter.png", color: AppColors.blue),
  SkillModel(title: "Kotlin", imageUrl: "assets/images/kotlin.png", color: AppColors.yellow),
  SkillModel(title: "Swift", imageUrl: "assets/images/swift.png", color: AppColors.purple),
  SkillModel(title: "Java", imageUrl: "assets/images/java.png", color: AppColors.cyanAccent),
  SkillModel(title: "Javascript", imageUrl: "assets/images/js.png", color: AppColors.lightYellow),
  SkillModel(title: "React", imageUrl: "assets/images/react.png", color: AppColors.brown),
  SkillModel(title: "ReactNative", imageUrl: "assets/images/rn.png", color: AppColors.green),
  SkillModel(title: "PHP", imageUrl: "assets/images/PHP.png", color: AppColors.red),
  SkillModel(title: "Laravel", imageUrl: "assets/images/laravel.png", color: AppColors.textBlue),
  SkillModel(title: "Dart", imageUrl: "assets/images/dart.png", color: AppColors.purple),
  SkillModel(title: "Firebase", imageUrl: "assets/images/firebase.png", color: AppColors.lightPink),
  SkillModel(title: "Solidity", imageUrl: "assets/images/solidity.jpeg", color: AppColors.tileColor1),
];

List<ExperienceModel> experiences = [
  ExperienceModel(
    key: GlobalKey<ExpansionTileCardState>(),
    title: "LEAD FRONTEND & MOBILE APPLICATION DEVELOPER",
    company: "Africa Strategy Advisers",
    date: "March 2022 - present",
    experience: """• Contributed to the development and maintenance of a digital e-commerce system application
known as the Ideas Market Place Application.
• Improved on the Idea market place application by adding helpful features like the create campaign
feature and the request a solution feature. These features enable a corporate user to create a
campaign and to invite users to provide solutions to the submitted problem at a given cost.
• Optimised the user experience by implementing an improved design for the Mobile Web UI and
UX of the Idea Market Place application using styled-components and CSS.
• Collaborated with Backend Engineers and UI/UX Designers to optimise the Idea Market Place
Application using agile methodology with little supervision.
• Implemented some advanced components to improve the application quality. Some of these components include: code clean up to improve code maintenance and a corporation module for the
corporate users to navigate through the idea market to bid for ideas""",
  ),
  ExperienceModel(
    key: GlobalKey<ExpansionTileCardState>(),
    title: "LEAD MOBILE APPLICATION DEVELOPER",
    company: "Dreamlabs",
    date: "Nov 2019 - March 2022",
    experience: """• Managed and updated the in-house revenue collection system known as Revpro and supervised
the deployment of RevPro in multiple states across the country.
• Built the Rev Pro mobile application from scratch using Flutter, Firebase, and Kotlin the Telpo
POS SDK integration through the method channel.
• Optimized the RevPro application by writing unit and UI tests to identify malfunctions, troubleshoot and debug.
• Maintained the RevPro application by developing some unique features for the application, utilizing Vue.js, HTML, CSS/SCSS, and Javascript for the Frontend and Laravel/PHP and MYSQL,
for the Backend.
• Supervised the development of Alumni mobile application for Android and iOS (Flutter) and web
app (Laravel).
• Supervised the development of Prestige mobile application ffor Android and iOS (Flutter) and
web app (Laravel).
• Developed and deployed Moneta Flutter payment library.
• Maintained, tested and fixed bug in Proclapp iOS app (Swift).
• Supervised the development of Desal MSC savings and loan mobile application for Android and
iOS (Flutter) and web app (Laravel).
• Updated, tested and fixed bugs in SabiXYZ native android app
• Supervised Junior developers and utilised the scrum framework to quality deliver products on
time.""",
  ),
  ExperienceModel(
    key: GlobalKey<ExpansionTileCardState>(),
    title: "FULL-STACK AND MOBILE APPLICATION DEVELOPER",
    company: "Computer and Telecom Services LLC",
    date: "Oct 2017 - Oct 2019",
    experience: """• Developed an Education Information Management System Portal (SBEMIS Portal) for Ekiti
State, Nigeria using VueJs, Axios, Laravel, MySQL
• Developed and deployed a mobile application for Education Information Management System
which increases the usage of the system by 21 percent using React Native and Redux.
• Developed and deployed CTS LLC website using WordPress.
• Built a Hotel Management System for a client, which catered for customer management, financies,
workers and store using PHP/Laravel and VueJs.
• Developed SBEMIS website using WordPress.
• Developed, deployed and managed a Multilevel Marketing System for a client in Nigeria using
PHP, Eloquent, JavaScript.
• Managed a school website for a client in Abuja, Nigeria built with WordPress.""",
  ),
  ExperienceModel(
    key: GlobalKey<ExpansionTileCardState>(),
    title: "LEAD INSTRUCTOR",
    company: "KZEE Engineering KZEE Engineering and Computer Consult",
    date: "Nov 2015 – Oct 2016",
    experience: """• Developed a student attendance monitoring system for clients using C-sharp, VB.Net, Digital
Persona SDK.
• Repaired and maintained several clients’ computer systems.
• Trained students on Software Development and Microsoft Application Packages.""",
  ),
  ExperienceModel(
    key: GlobalKey<ExpansionTileCardState>(),
    title: "SOFTWARE DEVELOPER INTERN",
    company: "Saisika Multipurpose Engineering Construction",
    date: "June 2015 - Nov 2015",
    experience: """• Collaborated with the front-end team that built Classtivities.
• Ensured that the software operateed ideally across a range of devices and platforms.
• Produced front-end code to create a polished and highly functional user interface with a focus on
usability and simplicity of design.
• Collaborated with quality assurance team for timely resolution of crisis.
• Found and Fixed bugs in Real time.""",
  ),
  ExperienceModel(
    key: GlobalKey<ExpansionTileCardState>(),
    title: "INDUSTRIAL TRAINEE",
    company: "Saisika Multipurpose Engineering Construction",
    date: "June 2012 – Dec 2012",
    experience:
        """• Built circuit boards for different electronic construction works including digital sign boards, electronic traffic lights, digital inverters, IC programmers.
• Developed in house applications and websites using VB.Net, PHP, MySQL, JavaScript.""",
  ),
];
