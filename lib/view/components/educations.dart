import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/app/colors.dart';
import 'package:resume/app/constants.dart';

class EducationsCard extends StatelessWidget {
  const EducationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: educations.map((item) => educationItem(title: item["title"]!, date: item["date"]!, course: item["course"]!)).toList(),
    );
  }

  Widget educationItem({required String title, required String date, required String course}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF16181D),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  "$date :- $title",
                  softWrap: true,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white,
                ),
                child: const Icon(FontAwesomeIcons.graduationCap),
              ),
            ],
          ),
          Text(
            course,
            style: GoogleFonts.lato(
              fontSize: 12,
              color: const Color(0xFF6E717E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
