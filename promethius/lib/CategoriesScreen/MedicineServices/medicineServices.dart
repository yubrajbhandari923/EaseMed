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
                body: Column(
              children: [
                MedicineCard(
                    name: snapshot.data[0]["name"],
                    image: snapshot.data[0]["image"],
                    price: snapshot.data[0]["price"])
              ],
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
