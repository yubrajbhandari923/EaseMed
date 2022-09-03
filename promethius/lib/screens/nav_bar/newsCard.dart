import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  String title;
  String description;
  String img;
  NewsCard({required this.title, required this.description, required this.img});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
        width: MediaQuery.of(context).size.width,
        height: 620,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 13),
              child: Text(
                title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              img,
              fit: BoxFit.contain,
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                description,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Icon(Icons.favorite);
                      },
                      icon: Icon(Icons.favorite_border)),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.message_outlined))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
