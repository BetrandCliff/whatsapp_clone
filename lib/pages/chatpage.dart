import 'package:flutter/material.dart';
import 'package:whatsapp/core/style.dart';
import 'package:whatsapp/core/utils/custom_card.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'package:whatsapp/screen/select_contact_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(name: "John Doe", icon: "/", isGroup: false, time: "8:00", currentMessage: "this is no school tomorrow"),
    ChatModel(name: "Flutter Developers", icon: "/", isGroup: true, time: "11:00", currentMessage: "Hi How are you doing"),
    ChatModel(name: "Bernard", icon: "/", isGroup: false, time: "2:00", currentMessage: "Ok Thanks"),
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryGreen,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectContact()));
        },
        child: const Icon(
          Icons.chat,
          color: primaryWhite,
        ),
      ),
      body: ListView.builder(
          itemCount: chats.length, itemBuilder: (context, index) => CustomCard(chatModel: chats[index],)),
    );
  }
}
