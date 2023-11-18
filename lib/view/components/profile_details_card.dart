import 'package:flutter/cupertino.dart';
import 'package:resume/app/colors.dart';

class ProfileDetailsCard extends StatelessWidget {
  const ProfileDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFEFC777),
      ),
      child: const Text(
        "Highly passionate Mobile Application Developer and Full-stack Developer with 7+ years hands-on experience building mobile applications using a range of technologies and programming languages. Adept at developing applications based on customer specifications and recommending application changes to make them more efficient. Proficient in upgrading existing apps to make them more user friendly and efficient.",
        style: TextStyle(
          color: AppColors.darkProfile,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
