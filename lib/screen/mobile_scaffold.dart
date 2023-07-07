import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class MobileScaf extends StatelessWidget {
  const MobileScaf({super.key});

  Color getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1C20),
      drawer: const Drawer(),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xffA57E56),
      //   actions: const [
      //     Icon(
      //       Icons.search,
      //       color: Color(0xffb897fb),
      //     )
      //   ],
      //   centerTitle: true,
      //   title: const Icon(
      //     Icons.account_balance_rounded,
      //     color: Color(0xff1E365E),
      //     size: 30,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to Fabulous Fashion Finds!",
                style: GoogleFonts.lobsterTwo(
                  color: const Color.fromARGB(255, 66, 4, 4),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                "Struggling to put together the perfect outfit for a special occasion? Need advice on accessorizing or pairing different clothing items?",
                style: GoogleFonts.bodoniModa(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        color: getRandomColor(),
                        child: const Column(children: [
                          ListTile(
                            leading:
                                Icon(Icons.add_photo_alternate_sharp, size: 30),
                          )
                        ]),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: getRandomColor(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
