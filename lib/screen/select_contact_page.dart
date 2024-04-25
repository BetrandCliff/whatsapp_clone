import 'package:flutter/material.dart';
import 'package:whatsapp/core/style.dart';
import 'package:whatsapp/core/utils/custom_card.dart';
import 'package:whatsapp/core/utils/custom_popup_menu.dart';

import '../model/chat_model.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  final List<PopupMenuItem> items = [
    PopupMenuItem(
      child: Text("Invite a friend"),
      value: "Invite a friend",
    ),
    PopupMenuItem(
      child: Text("Contacts"),
      value: "Contacts",
    ),
    PopupMenuItem(
      child: Text("Refresh"),
      value: "Refresh",
    ),
    PopupMenuItem(
      child: Text("Help"),
      value: "Help",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: primaryWhite,
            )),
        backgroundColor: primaryGreen,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Contact",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: primaryWhite),
            ),
            Text(
              "240 contacts",
              style:
                  TextStyle(fontSize: 13, color: primaryWhite.withOpacity(0.5)),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 26,
                color: primaryWhite,
              )),
          CustomPopUpMenu(items: items)
        ],
      ),
    );
  }
}
