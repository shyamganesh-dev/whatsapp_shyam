import 'package:flutter/material.dart';
import "store_page_view.dart";
import '../models/chat_model.dart';


class StatusScreen extends StatelessWidget {
  List<String> Statlogs=["Yesterday,10:20","Yesterday,12:30","Yesterday,02:50","Yesterday,11:40","Today:10:00","Today:10:20","Today,09:12","Today:04:00","Today,07:20","Today,02:12"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Color(0xfff2f2f2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Tap to add status update"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                "Viewed updates",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                // padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: dummyData.length,
                    itemBuilder:(ctx,i){
                      return ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                            ),
                            title: Text(
                              dummyData[i].name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(Statlogs[i]),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StoryPageView())),
                      );
                    }
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
