import 'package:flutter/material.dart';

import '../../components/bloodbank_card.dart';

class Ambulance extends StatefulWidget {
  const Ambulance({Key? key}) : super(key: key);

  @override
  State<Ambulance> createState() => _AmbulanceState();
}

class _AmbulanceState extends State<Ambulance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Nearest Ambulance',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          BloodbankCard('Bhaktapur', 'Nagarik Hospital', '01411082'),
          BloodbankCard('Bhaktapur', 'Nepal Korea Maitri Hospital', '01410700'),
          BloodbankCard('Thapathali (Kathmandu)', 'Norvic International Hospital', '9803222222'),
          BloodbankCard('Harisiddhi (Lalitpur)', 'Nepal Cancer Hospital', '014260405'),
          BloodbankCard('Satdobato (Lalitpur)', 'Satdobato Ambulance Samiti', '01411082'),
          BloodbankCard('Boudh (Kathmandu)', 'Star Hospital', '01411032'),


        ],),
      ),
    );
  }
}
