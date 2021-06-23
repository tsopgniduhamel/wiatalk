import 'package:final_wiatalk/customUI/ButtonCard.dart';
import 'package:final_wiatalk/customUI/contactCard.dart';
import 'package:final_wiatalk/customUI/customChatCard.dart';
import 'package:final_wiatalk/models/chatModel.dart';
import 'package:final_wiatalk/CreateGroup.dart';
import 'package:flutter/material.dart';

class SelectContact extends StatefulWidget {
  // const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
          name: "Ahmadou Djarou",
          status: "Mobile Developer",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Kepseu Franky",
          status: "Occupé pour le moment",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Paule Ekam",
          status: "Road to enginneering",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Djongang Darylle",
          status: "Time to sleep",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Tchouankeu Maeva",
          status: "A l'école",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Ahmadou Djarou",
          status: "Mobile Developer",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Kepseu Franky",
          status: "Occupé pour le moment",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Paule Ekam",
          status: "Road to enginneering",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Djongang Darylle",
          status: "Time to sleep",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
      ChatModel(
          name: "Tchouankeu Maeva",
          status: "A l'école",
          icon: "assets/person.svg",
          time: "10:37",
          currentMessage: "bonjour"),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "choisir le contact",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text(contacts.length.toString() + " contacts",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.white,
                )),
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
            itemCount: contacts.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return InkWell(
                  onTap: () {},
                  child: ButtonCard(
                    icon: Icons.person_add,
                    name: "Nouveau Contact",
                  ),
                );
              } else if (index == 1) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => CreateGroup()));
                  },
                  child: ButtonCard(
                    icon: Icons.group_add,
                    name: "Nouveau Groupe",
                  ),
                );
              }
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>
                              CustomChatCard(chatModel: contacts[index])));
                },
                child: ContactCard(
                  contact: contacts[index - 2],
                ),
              );
            }));
  }
}
