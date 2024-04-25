import 'package:flutter/material.dart';
import 'package:whatsapp/core/style.dart';
import 'package:whatsapp/core/utils/custom_popup_menu.dart';
import 'package:whatsapp/pages/chatpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  final List<PopupMenuItem> items =[
                  PopupMenuItem(
                    child: Text("New Group"),
                    value: "New Group",
                  ),
                  PopupMenuItem(
                    child: Text("New Broadcast"),
                    value: "New Broadcast",
                  ),
                  PopupMenuItem(
                    child: Text("Whatsap web"),
                    value: "Whatsapp web",
                  ),
                  PopupMenuItem(
                    child: Text("Start Message"),
                    value: "Start Message",
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                    value: "Settings",
                  ),
                ];

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075454),
        title: Text(
          "Whatsapp clone",
          style: TextStyle(color: primaryWhite),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: primaryWhite,
              )),


          CustomPopUpMenu(items: items)
          
          // PopupMenuButton(
          //     onSelected: (value) {
          //       print("values selected is $value");
          //     },
          //     iconColor: primaryWhite,
          //     itemBuilder: (BuildContext context) {
          //       return 
                
          //     })
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.more_vert,
          //       color: primaryWhite,
          //     ))
        ],
        bottom: TabBar(
          // indicatorColor: primaryWhite,
          labelColor: primaryWhite,
          unselectedLabelColor: primaryWhite.withOpacity(0.5),
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            )
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: [
        Text("Camera"),
        ChatPage(),
        Text("Status"),
        Text("Calls")
      ]),
    );
  }
}
