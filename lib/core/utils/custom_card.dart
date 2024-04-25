import 'package:flutter/material.dart';
import 'package:whatsapp/core/style.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'package:whatsapp/screen/individual_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.chatModel});
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IndividualPage(chatModel: chatModel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 33,
              child: Icon(
                chatModel.isGroup ? Icons.group : Icons.person,
                color: primaryWhite,
                size: 32,
              ),
              backgroundColor: primaryGreen.withOpacity(0.7),
            ),
            trailing: Text("${chatModel.time}"),
            title: Text(
              "${chatModel.name}",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 5,
                ),
                Text("${chatModel.currentMessage}"),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
