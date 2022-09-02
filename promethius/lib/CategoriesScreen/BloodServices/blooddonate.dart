import 'package:flutter/material.dart';

class BloodDonate extends StatefulWidget {
  const BloodDonate({Key? key}) : super(key: key);

  @override
  State<BloodDonate> createState() => _BloodDonateState();
}

class _BloodDonateState extends State<BloodDonate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Donate blood to save life'),),
    );
  }
}
