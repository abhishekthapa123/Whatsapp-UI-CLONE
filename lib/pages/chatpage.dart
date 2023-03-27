import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/pages/chatdetail_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
   
    return Container(
        child: ListView.builder(
      itemCount: chatData.length,
      itemBuilder: ((context, index) => Column(
            children: [
              Divider(height: 10.0),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(chatData[index].avatar),
                ),
                title: Text(chatData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(chatData[index].message),
                trailing: Text(chatData[index].time),
                onTap: () {
                  // print('Chat Detail Message');
                  Navigator.push(context,MaterialPageRoute(builder:((context) => ChatDetailPage(name:chatData[index].name ,image: chatData[index].avatar,))));
                },
              )
            ],
          )),
    ));
  }
}
