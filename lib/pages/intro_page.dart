import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = 40;
    double width = 40;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.4),
        child: Container(
          margin: const EdgeInsets.only(left: 0.3, right: 0.3),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.yellow,
                Colors.red,
                Colors.indigo,
                Colors.teal,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Image.asset(
                "assets/quote-1.png",
                height: height,
                width: width,
              ),
              const SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.lato(
                    textStyle:
                        const TextStyle(fontSize: 60, color: Colors.black),
                  ),
                  children: const [
                    TextSpan(text: "Get\n"),
                    TextSpan(
                        text: "Inspired",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text("Let's Go"),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
