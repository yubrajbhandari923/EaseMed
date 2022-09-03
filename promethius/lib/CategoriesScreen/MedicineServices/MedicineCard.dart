import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  String name;
  String image;
  String price;
  MedicineCard({required this.name, required this.image, required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(
        20,
      ),
      decoration: BoxDecoration(
          border: Border.symmetric(),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 20),
          ]),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 13),
              child: Text(
                name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Image.asset(
                'images/ambulance.png',
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(price),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text('View More'))
          ],
        ),
      ]),
    );
  }
}
