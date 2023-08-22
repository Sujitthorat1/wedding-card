import 'package:flutter/material.dart';
import 'package:wedding_card_app/screens/wedding_cards.dart';
import 'package:wedding_card_app/widget/common_colors.dart';
import 'package:wedding_card_app/widget/drawer_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          surfaceTintColor: Colors.black,
          centerTitle: true,
          title:  Text("Celebrare",style:GoogleFonts.kalam(
                    textStyle:TextStyles.heading3
                        ),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            
            tabs: [
            Tab(text: "WEDDING CARDS",),
            Tab(
                    text: "WEDDING VIDEO",
                  ),
    
          ],)
        ),
        drawer:const DrawerScreen(),
        body: const TabBarView(children:[
          WeddingCardScreen(),
          Icon(Icons.abc),

        ]),
      ),
    );
    
  }
}
