import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_screen/pattern/theme/theme_colorv1.dart';

class Pricingv1 extends StatefulWidget {
  const Pricingv1({super.key});

  @override
  State<Pricingv1> createState() => _Pricingv1State();
}

class _Pricingv1State extends State<Pricingv1> {
  int selectIndex = -1;

  final List<Map<String, String>> options = [
    {
      "imageUrl": "assets/images/images1.png",
      "title": "Money Security",
      "description": "support",
      "subdescription": "24/7",
    },
    {
      "imageUrl": "assets/images/images2.png",
      "title": "Autonation",
      "description": "we provide",
      "subdescription": "Invoice",
    },
    {
      "imageUrl": "assets/images/images3.png",
      "title": "Balance Report",
      "description": "can up to",
      "subdescription": "10k",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
                right: 30,
              ),
              child: Center(
                child: Image.asset(
                  "assets/logos/logo.png",
                  width: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              "Which one you wish\nto Upgrade?",
              style: GoogleFonts.poppins(
                color: textColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options[index];
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectIndex = index;
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      width: 315,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39),
                        border: Border.all(
                          color: selectIndex == index
                              ? purpleColor
                              : borderNoActiveColor,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 17,
                              bottom: 16,
                            ),
                            child: Image.asset(
                              option["imageUrl"]!,
                              width: 66,
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                option["title"]!,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: textColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Text(
                                    option["description"]!,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xFFA3A8B8),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    option["subdescription"]!,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: purpleColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          if (selectIndex == index)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 42,
                                right: 27,
                              ),
                              child: Image.asset(
                                "assets/icons/ic_check.png",
                                width: 26,
                              ),
                            )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.circular(0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upgrade Now",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    "assets/icons/arrow-right-circle.png",
                    width: 24,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
