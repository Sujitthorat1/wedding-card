import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeddingCardScreen extends StatefulWidget {
  const WeddingCardScreen({super.key});

  @override
  State<WeddingCardScreen> createState() => _WeddingCardScreenState();
}

class _WeddingCardScreenState extends State<WeddingCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              ),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Invitation-Cards.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 60, top: 10, right: 20),
              child: Center(
                child: Text("Super easy to create Dream Wedding invite",
                    style: GoogleFonts.kalam(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),
          Container(
            width: 360,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 46, 140, 127),
            ),
            child:  Center(
              child: Text("Create Wedding Invitation", style: GoogleFonts.mukta(
                color: Colors.white, fontWeight:FontWeight.bold
              ), ),
            ),
          ),
          Wrap(
            children: [
              Container(),
              
            ],
          )
        ],
      ),
    );
  }
}
