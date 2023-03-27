import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bubble/bubble.dart';
import 'package:whatsapp_clone/bubble_style.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}
  ScrollController _myScrollContainer = ScrollController();
class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
     SchedulerBinding.instance.addPersistentFrameCallback((_){
      _myScrollContainer.jumpTo(_myScrollContainer.position.maxScrollExtent);
    });
    return ListView(
      controller: _myScrollContainer,
      children: [
      
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: BubbleCustomStyle.styleSender,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: BubbleCustomStyle.styleSender,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
         style:BubbleCustomStyle.styleReceiver,
          child: const Text('Hi, developer!'),
        ),
          for (int i =1;i<=15;i++)...[
        Bubble(
          style: BubbleCustomStyle.styleReceiver,
          child: const Text('Well, see for yourself'),
        ),
      ]
        
      ],
    );
  }
}
