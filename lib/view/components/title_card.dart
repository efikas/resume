import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/app/colors.dart';

class TitleCard extends StatelessWidget {
  TitleCard({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 30,
        ),
        child: Text(
          title,
          style: GoogleFonts.lato(
            fontSize: 25,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    ;
  }
}
