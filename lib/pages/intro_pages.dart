import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercadinhoapp/pages/home_page.dart';

class IntroPages extends StatefulWidget {
  const IntroPages({super.key});

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //logo
        Padding(
          padding:
              const EdgeInsets.only(top: 120, bottom: 80, right: 80, left: 80),
          child: Image.asset('lib/images/avocado.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'entregamos mantimentos à sua porta',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Item fresco todos os dias',
          style: TextStyle(color: Colors.grey[600]),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) {
                return const HomePage();
              }),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Começar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
