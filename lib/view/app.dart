import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:resume/app/colors.dart';
import 'package:resume/core/routes/routers.dart';
import 'package:resume/view/components/certifications.dart';
import 'package:resume/view/components/educations.dart';
import 'package:resume/view/components/experience.dart';
import 'package:resume/view/components/name_card.dart';
import 'package:resume/view/components/skills.dart';
import 'package:resume/view/components/title_card.dart';
import 'package:resume/view/components/profile_details_card.dart';
import 'package:resume/view/repo/repo.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Routers.push(context, const RepoPage());
          },
          child: const Icon(
            FontAwesomeIcons.github,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              const NameCard(),
              TitleCard(
                title: "Profile",
              ),
              const ProfileDetailsCard(),
              TitleCard(
                title: "Education",
              ),
              const EducationsCard(),
              TitleCard(
                title: "Certifications",
              ),
              const CertificationsCard(),
              TitleCard(
                title: "Skills",
              ),
              const SkillsCard(),
              TitleCard(
                title: "Experience",
              ),
              ExperiencesCard(),
            ],
          ),
        ),
      ),
    );
  }
}
