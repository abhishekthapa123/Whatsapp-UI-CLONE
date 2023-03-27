import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/actionsAppbar.dart';
import 'package:whatsapp_clone/customTextStyle.dart';
import 'package:whatsapp_clone/pages/message_page.dart';

class ChatDetailPage extends StatefulWidget {
  String name;
  String image;
  ChatDetailPage({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState(name, image);
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  String name;
  String image;
  _ChatDetailPageState(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Row(children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(image),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(name, style: CustomTextStyle.textStyle),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: const Text(
                    "Last Seen 11:30",
                    style: CustomTextStyle.subtextStyle,
                  ),
                ),
              ],
            )
          ]),
          actions: ActionAppBar.customactionsButtons,
        ),
        body: Column(
          children: [
            Expanded(child: MessagePage()),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:BorderSide(color: Colors.grey)
                        ),
                        prefixIcon: Icon(Icons.emoji_emotions),
                        hintText: "Message",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.file_copy_outlined)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.mic,
                                    color: Colors.green,
                                  ))
                            ],
                          ),
                        ))),
              ),
            ),
          ],
        ));
  }
}
