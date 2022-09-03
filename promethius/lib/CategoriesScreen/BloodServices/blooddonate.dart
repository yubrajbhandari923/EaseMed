import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodDonate extends StatefulWidget {
  const BloodDonate({Key? key}) : super(key: key);

  @override
  State<BloodDonate> createState() => _BloodDonateState();
}

class _BloodDonateState extends State<BloodDonate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Further Updates Coming Soon.',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)))
        ],
      ),
    );
  }
}
