import 'package:flutter/material.dart';

class BloodRequest extends StatefulWidget {
  const BloodRequest({Key? key}) : super(key: key);

  @override
  State<BloodRequest> createState() => _BloodRequestState();
}

class _BloodRequestState extends State<BloodRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Form'),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                  ),
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                  ),
                  labelText: 'Phone',
                  hintText: 'Phone Number'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                  ),
                  labelText: 'Patient Name',
                  hintText: 'Patient'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                  ),
                  labelText: 'Location',
                  hintText: 'Your Location'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                  ),
                  labelText: 'Case',
                  hintText: 'eg: Accident, Pregnancy'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                  ),
                  labelText: 'Blood Group',
                  hintText: 'eg: A+, O-, AB+'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                ),
                onPressed: () {},
                child: const Text(
                  'SEND REQUEST',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
