import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:promethius/constants.dart';
import 'package:flutter/services.dart';
import 'package:promethius/screens/nav_bar/newsCard.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  Future<dynamic> getNews() async {
    print('get News');
    Uri url = Uri.https('', 'news');
    http.Response res = await http.get(url);
    print(res.statusCode);
    return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    var a = getNews();
    return FutureBuilder(
      future: getNews(),
      builder: (BuildContext ctx, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(title: Text('Daily Updates')),
            body: Column(
              children: [
                NewsCard(
                  title: snapshot.data[0]["title"],
                  description: snapshot.data[0]["body"],
                  img: 'assets/images/onboarding_illustration.png',
                ),
                SizedBox(
                  height: 20,
                ),
                NewsCard(
                    title: snapshot.data[0]["title"],
                    description: snapshot.data[0]["body"],
                    img: 'assets/images/ambulance.png')
              ],
            ),
          );
          // Text(snapshot.data[0]["title"])
        } else {
          return Scaffold(
            appBar: AppBar(title: Text('Error')),
          );
        }
      },
    );
  }
}
