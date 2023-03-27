import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/pages/chatpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
late   TabController _tabController;
  final List<Tab>  toptabs = <Tab>
  [
    
    Tab(icon: Icon(Icons.camera_enhance),),
    Tab(text: "CHATS",),
    Tab(text: 'STATUS',),
    Tab(text: 'CALLS',)
  ];
  final List<IconButton> actionButtonIcons = <IconButton>[
    IconButton(onPressed:(){

    },icon:Icon(Icons.search) ),
    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert))
  ];
  @override
  void initState() {
   _tabController = TabController(length: 4, initialIndex: 1,vsync:this)
   ..addListener(() {
    setState(() {
      
    });
   });
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     
        actions: actionButtonIcons,
        title: const Text("WhatsApp"),
        bottom: TabBar(
          physics:BouncingScrollPhysics(),
          controller: _tabController,
          tabs: toptabs,
          indicatorColor: Colors.white,),
      ),
      body: TabBarView(
        controller: _tabController,
        children:[
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Call')
        ]),
 
    );
  }
}