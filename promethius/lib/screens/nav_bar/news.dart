import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  String getNews() async {
      http.Response res = await http.get('https://jsonplaceholder.typicode.com/posts');
      print(res.status_code);
      return res.body ;
  }

  @override
  Widget build(BuildContext context) {
    String a = getNews();
    return Container();
  }
}
