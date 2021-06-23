import 'package:final_wiatalk/customUI/customChatCard.dart';
import 'package:final_wiatalk/models/chatModel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chat extends StatefulWidget {
  // Chat({Key key, this.chatmodels}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatModel> chatmodels = [
    ChatModel(
        id: 1,
        name: "Ahmadou Djarou",
        icon: "person.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour gars on dit quoi ?"),
    ChatModel(
        id: 2,
        name: "Djongang Darylle",
        icon: "person.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour gars on dit quoi ?"),
    ChatModel(
        id: 3,
        name: "Ekam Paule",
        icon: "person.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour gars on dit quoi ?"),
    ChatModel(
        id: 4,
        name: "Kepseu Franky",
        icon: "person.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour gars on dit quoi ?"),
    ChatModel(
        id: 5,
        name: "Tchouankeu Maeva",
        icon: "person.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour gars on dit quoi ?"),
    ChatModel(
        id: 6,
        name: "Tsopgni Duhamel",
        icon: "person.svg",
        isGroup: false,
        time: "13:37",
        currentMessage: "Bonjour gars on dit quoi ?"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Chat",
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
                  PopupMenuItem(child: Text("Lundi"), value: "Element 1"),
                  PopupMenuItem(child: Text("Mardi"), value: "Element 2"),
                  PopupMenuItem(child: Text("Mercredi"), value: "Element 3"),
                  PopupMenuItem(child: Text("dimanche"), value: "Element 4")
                ];
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (context, index) =>
              CustomChatCard(chatModel: chatmodels[index]),
        ));
  }
}
