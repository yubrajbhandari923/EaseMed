import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  String name;
  String location;
  Popup({required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: AlertDialog(
        title: Text(name),
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(location),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
