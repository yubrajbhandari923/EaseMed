import 'package:flutter/material.dart';
import 'package:promethius/CategoriesScreen/BloodServices/ambulance.dart';

import 'BloodServices/bloodbank.dart';
import 'BloodServices/blooddonate.dart';
import 'BloodServices/bloodrequest.dart';

class BloodServices extends StatefulWidget {
  const BloodServices({super.key});

  @override
  State<BloodServices> createState() => _BloodServicesState();
}

class _BloodServicesState extends State<BloodServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
            child: Text(
          'Blood Services',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/bloodbank.png',
                          height: 90,
                          width: 80,
                        ),
                        const Text(
                          'Blood Bank',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BloodBank()),
                  );

                },
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/blooddonate.png',
                          height: 90,
                          width: 80,
                        ),
                        const Text(
                          'Blood Donate',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BloodDonate()),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/bloodrequest.png',
                          height: 90,
                          width: 80,
                        ),
                        const Text(
                          'Blood Request',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BloodRequest()),
                  );
                },
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/ambulance.png',
                          height: 90,
                          width: 80,
                        ),
                        const Text(
                          'Ambulance',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ambulance()),
                  );
                },

              ),
            ],
          )
        ],
      ),
    );
  }
}
