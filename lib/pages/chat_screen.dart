import 'package:flutter/material.dart';
import '../models/chat_model.dart';


class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[i].message,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>Message()));
                }
              )
            ],
          ),
    );
  }
}
 class Message extends StatefulWidget {
   @override
   _MessageState createState() => _MessageState();
 }

 class _MessageState extends State<Message> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.orangeAccent,
       appBar: AppBar(
         backgroundColor: Color(0xff075E54),
         title: Row(
           children: [
             CircleAvatar(),
             SizedBox(width: 5),
             Text("SHYAM DEVELOPER"),
           ],
         ),
         actions: [
           Icon(Icons.call),
           SizedBox(width: 20),
           Icon(Icons.video_call),
           SizedBox(width: 20),
           Icon(Icons.more_vert,)
         ],
       ),
       body:Align(
         alignment: Alignment.bottomCenter,
           child: Row(
             children: [
             Container(
               width: 380,
               height: 35,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(40),
                 color: Colors.white,
               ),
               child: Row(children: [
                 SizedBox(width: 5,),
                 Icon(Icons.insert_emoticon,size: 25,color: Theme.of(context).hintColor),
                 SizedBox(width: 15,),
                 Expanded(
                   child: TextField(
                     decoration: InputDecoration(
                     hintText: 'Type a message',
                     border: InputBorder.none,
                   ),),
                 ),
                 Icon(Icons.attach_file,size: 25,color: Theme.of(context).hintColor),
                 SizedBox(width: 5,),
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Icon(Icons.camera_enhance,size: 25,color: Theme.of(context).hintColor),
                 )
               ],),
             ),
               SizedBox(width: 5,),
               CircleAvatar(backgroundColor:Color(0xff075E54),
                 child: Center(child: Icon(Icons.send,size: 24,color: Colors.white,)),
                 radius: 18,
               )
           ],),
         )
     );
   }
 }
