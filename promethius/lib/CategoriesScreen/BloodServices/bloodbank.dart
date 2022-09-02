import 'package:flutter/material.dart';
import 'package:promethius/components/bloodbank_card.dart';

class BloodBank extends StatefulWidget {
  const BloodBank({Key? key}) : super(key: key);

  @override
  State<BloodBank> createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Blood Bank',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          BloodbankCard('Nobel Hospital Blood Bank', 'Sinamangal, Kathmandu', '01411082'),
          BloodbankCard('Civil Service Hospital', 'Baneshwor, Kathmandu', '01410700'),
          BloodbankCard('Red Cross Society Blood Bank', 'Balkumari, Kathmandu', '01518630'),
          BloodbankCard('Maternity & Women Hospital Blood Bank', 'Thapathali, Kathmandu', '014260405'),
          BloodbankCard('Himal Hospital Blood Bank', 'Gyaneshwor, Kathmandu', '01411082'),
          BloodbankCard('Lalitpur Blood Bank', 'Pulchowk,lalitpur', '01411032'),


        ],),
      ),
    );
  }
}
