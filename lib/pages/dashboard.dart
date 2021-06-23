import 'package:final_wiatalk/customUI/customChatCard.dart';
import 'package:final_wiatalk/models/chatModel.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Projet RMI",
        icon: "groups.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour"),
    ChatModel(
        name: "Projet SMA",
        icon: "groups.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Le projet avance bien ?"),
    ChatModel(
        name: "Pipos 2022",
        icon: "groups.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Le projet avance bien ?"),
    ChatModel(
        name: "GI2022",
        icon: "groups.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Le projet avance bien ?"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Groups",
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text("Element 1"), value: "Element 1"),
                  PopupMenuItem(child: Text("Element 2"), value: "Element 2"),
                  PopupMenuItem(child: Text("Element 3"), value: "Element 3"),
                  PopupMenuItem(child: Text("Element 4"), value: "Element 4")
                ];
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) =>
              CustomChatCard(chatModel: chats[index]),
        ));
  }
}
