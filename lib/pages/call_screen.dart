import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../models/chat_model.dart";

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List<String> logs=["Yesterday,10:20","Yesterday,12:30","Yesterday,02:50","Yesterday,11:40","Today:10:00","Today:10:20","Today,09:12","Today:04:00","Today,07:20","Today,02:12"];

  bool pressed=false;

  List<Widget> calls=[IconButton(icon: Icon(Icons.call),onPressed: ()=>print("Call button pressed"))];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
        itemBuilder: (ctx,i){
        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          title: Text(dummyData[i].name),
          subtitle: Text(logs[i]),
          trailing: IconButton(icon: i%3==0?Icon(Icons.video_call):Icon(Icons.call),onPressed: ()=>print("Call button pressed"),),
          leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl,)),
        );
        },

    );
  }
}
