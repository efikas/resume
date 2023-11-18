import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/app/colors.dart';
import 'package:resume/app/constants.dart';
import 'package:resume/core/models/items/skill.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF16181D),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: skills.map((item) => skillItem(item)).toList(),
        ),
      ),
    );
  }

  Widget skillItem(SkillModel skill) {
    return Container(
      width: 100,
      height: 90,
      margin: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: skill.color,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(
               skill.imageUrl,
              ),
              width: 50,
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text(
              skill.title,
              style: GoogleFonts.lato(
                fontSize: 13,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
