import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/app/colors.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: AssetImage('assets/images/pic.jpeg'),
              height: 150,
              width: 150,
            ),
          ),
        ),
        Text(
          "Abdullahi Lateef",
          style: GoogleFonts.lato(
            fontSize: 25,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Frontend and Mobile App Developer",
          style: GoogleFonts.lato(
            fontSize: 18,
            color: AppColors.darkBrown,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
    ;
  }
}
