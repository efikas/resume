import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/app/colors.dart';
import 'package:resume/app/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificationsCard extends StatelessWidget {
  const CertificationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: certifications.map((item) => certItem(item)).toList(),
          ),
        ),
      ),
    );
  }

  Widget certItem(Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        if (item["link"].toString().contains("http")) {
          _launchUrl(item["link"]);
        }
      },
      child: Container(
        width: 180,
        height: 145,
        margin: const EdgeInsets.only(right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: item["color"],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Text(
                item["host"]!,
                style: const TextStyle(
                  color: Color(0xFF2C352D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Text(
                item["title"]!,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 5),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6, top: 6, right: 6, bottom: 6),
                    child: Text(
                      item["year"]!,
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
