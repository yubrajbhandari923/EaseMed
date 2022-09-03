import 'dart:convert';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Chatbot Flask',
//       theme: ThemeData(primarySwatch: Colors.blue,
//       ),
//       home: ChatBotPage(title: 'Flutter & Python'),
//     );
//   }
// }
class ChatBotPage extends StatefulWidget {
  // ChatBotPage() ;
  final String title="";
  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}
class _ChatBotPageState extends State<ChatBotPage> {final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _data = [];
  static const String BOT_URL = "tall-crews-own-27-34-12-227.loca.lt"; // replace with server address
  TextEditingController _queryController = TextEditingController();@override
  Widget build(BuildContext context) {return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter & Python"),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedList(
            // key to call remove and insert from anywhere
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: (BuildContext context, int index, Animation<double> animation){
              return _buildItem(_data[index], animation, index);
            }
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.message, color: Colors.greenAccent,),
                hintText: "Hello",
              ),
              controller: _queryController,
              textInputAction: TextInputAction.send,
              onSubmitted: (msg){this._getResponse();
              },),
          )
        ],
      )
      ,
    );
  }http.Client _getClient(){
    return http.Client();
  }void _getResponse(){
    if (_queryController.text.length>0){
      this._insertSingleItem(_queryController.text);
      var client = _getClient();
      try{
        print(_queryController.text);
        client.get(Uri.http(BOT_URL, 'chatbot/${_queryController.text}')).then((response){
          // Map<String, dynamic> data = jsonDecode(response.body);
          _insertSingleItem(response.body);});
      }catch(e){
        print("Failed -> $e");
      }finally{
        client.close();
        _queryController.clear();
      }
    }
  }void _insertSingleItem(String message){_data.add(message); 
    _listKey.currentState?.insertItem(_data.length-1);
  }
  Widget _buildItem(String item, Animation<double> animation,int index){
    bool mine = item.endsWith("<bot>");
    return SizeTransition(
      sizeFactor: animation,
      child: Padding(padding: EdgeInsets.only(top: 10),
      child: Container(
        alignment: mine ?  Alignment.topLeft : Alignment.topRight,child : Bubble(
        child: Text(item.replaceAll("<bot>", "")),
        color: mine ? Colors.blue : Colors.indigo,
        padding: BubbleEdges.all(10),)),
    ));
  }
}