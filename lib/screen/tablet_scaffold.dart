import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletScaf extends StatelessWidget {
  const TabletScaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.9,
        backgroundColor: const Color(0xff252525),
        centerTitle: true,
        title: Text(
          "Dribbble",
          style: GoogleFonts.pacifico(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: GoogleFonts.spaceMono(color: Colors.grey),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ],
        leading: const Icon(
          Icons.apps,
          color: Colors.grey,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            // height: 100,
            decoration: const BoxDecoration(
              color: Color(0xff252525),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    child: Text.rich(
                      TextSpan(
                        text: "What are you working on?, ",
                        children: [
                          TextSpan(
                            text: "Dribbble",
                            style: GoogleFonts.pacifico(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: " is where designers get inspired and hired",
                            style: GoogleFonts.spaceMono(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      style: GoogleFonts.spaceMono(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
