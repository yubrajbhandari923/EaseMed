import 'package:promethius/CategoriesScreen/MedicineServices/medicineServices.dart';
import 'package:promethius/CategoriesScreen/NearestHospital.dart';
import 'package:promethius/screens/nav_bar/news.dart';
import 'package:promethius/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      home: OnboardingScreen(),
    );
  }
}
