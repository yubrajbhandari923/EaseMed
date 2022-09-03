import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StayTuned extends StatelessWidget {
  const StayTuned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.symmetric(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 20),
            ]),
        child: Column(
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
      ),
    );
  }
}
