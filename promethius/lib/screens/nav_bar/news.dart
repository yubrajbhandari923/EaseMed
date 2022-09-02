import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  Future<dynamic> getNews() async {
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    http.Response res = await http.get(url);
    print(res.statusCode);
    return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    var a = getNews();
    return Scaffold(
      body: Container(
          child: FutureBuilder(
        future: getNews(),
        builder: (BuildContext ctx, AsyncSnapshot snapshot) {
          return Text(snapshot.data[0]["title"]);
        },
      )),
    );
  }
}

