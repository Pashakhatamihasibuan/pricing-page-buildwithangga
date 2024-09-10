import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_screen/pattern/theme/theme_colorv2.dart';
import 'package:pricing_screen/widget/listv2.dart';
import 'package:slider_button/slider_button.dart';

class Pricingv2 extends StatelessWidget {
  const Pricingv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80,
                left: 28,
                right: 28,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/illustration.png",
                    width: 164,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Pro Features",
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Unlock the winner modules\nand get more insights",
                    style: GoogleFonts.poppins(
                      color: paragraphColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListItem(
                        text: "Unlock Our Top Charts",
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      ListItem(
                        text: "Save More than 1,000 Docs",
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      ListItem(
                        text: "24/7 Customer Support",
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      ListItem(
                        text: "Track Company’s Spending",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 58,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: buttomSliderColor.withOpacity(0.6),
                          blurRadius: 40,
                          offset: const Offset(0, 10),
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                    ),
                    child: SliderButton(
                      action: () async {
                        ///Do something here OnSlide
                        return true;
                      },
                      height: 55,
                      width: 319,
                      baseColor: whiteColor,
                      buttonColor: bottomColor,
                      buttonSize: 41,
                      backgroundColor: buttomSliderColor,
                      label: Center(
                        child: Text(
                          "Subscribe Now",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Contact Support",
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationColor: whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
