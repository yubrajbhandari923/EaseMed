import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'MedicineCard.dart';

class Medicines extends StatefulWidget {
  const Medicines({super.key});

  @override
  State<Medicines> createState() => _MedicinesState();
}

class _MedicinesState extends State<Medicines> {
  // Future<dynamic>ok() async{
  //   var jsonText=
  // }
  // Future<dynamic> getNews() async {

  //   http.Response res = await http.get();
  //   print(res.statusCode);
  //   return json.decode(res.body);
  // }

  // Future<String> _loadFromAsset() async {
  //   return await rootBundle.loadString("assets/medicines_data.json");
  // }

  Future<dynamic> parseJson() async {
    print('Parse jSON RAN');
    var jsonString = await rootBundle.loadString("medicines_data.json");
    final jsonResponse = json.decode(jsonString);
    print(jsonResponse[0]);
    return jsonResponse;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: parseJson(),
        builder: (BuildContext ctx, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MedicineCard(
                          name: snapshot.data[0]["name"],
                          image: snapshot.data[0]["image"],
                          price: snapshot.data[0]["price"]),
                      MedicineCard(
                          name: snapshot.data[1]["name"],
                          image: snapshot.data[1]["image"],
                          price: snapshot.data[1]["price"]),
                      MedicineCard(
                          name: snapshot.data[2]["name"],
                          image: snapshot.data[7]["image"],
                          price: snapshot.data[2]["price"]),
                      MedicineCard(
                          name: snapshot.data[3]["name"],
                          image: snapshot.data[3]["image"],
                          price: snapshot.data[3]["price"]),
                      MedicineCard(
                          name: snapshot.data[4]["name"],
                          image: snapshot.data[4]["image"],
                          price: snapshot.data[4]["price"]),
                      MedicineCard(
                          name: snapshot.data[5]["name"],
                          image: snapshot.data[5]["image"],
                          price: snapshot.data[5]["price"]),
                      MedicineCard(
                          name: snapshot.data[6]["name"],
                          image: snapshot.data[6]["image"],
                          price: snapshot.data[6]["price"]),
                      MedicineCard(
                          name: snapshot.data[7]["name"],
                          image: snapshot.data[7]["image"],
                          price: snapshot.data[7]["price"]),
                    ],
                  ),
                ));
          } else {
            return Scaffold(
                body: Column(
              children: [
                Text('Error'),
              ],
            ));
          }
        });
  }
}
