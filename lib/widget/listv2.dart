// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pricing_screen/pattern/theme/theme_colorv2.dart';

// ignore: must_be_immutable
class ListItem extends StatelessWidget {
  String text;
  ListItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      children: [
        Image.asset(
          "assets/icons/ic_checkv2.png",
          width: 26,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
