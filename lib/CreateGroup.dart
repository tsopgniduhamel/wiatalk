import 'package:final_wiatalk/customUI/AvatarCard.dart';
import 'package:final_wiatalk/customUI/contactCard.dart';
import 'package:final_wiatalk/models/chatModel.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  // const CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(
        name: "Ahmadou Djarou",
        status: "Mobile Developer",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Kepseu Franky",
        status: "Occupé pour le moment",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Paule Ekam",
        status: "Road to enginneering",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Djongang Darylle",
        status: "Time to sleep",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Tchouankeu Maeva",
        status: "A l'école",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Ahmadou Djarou",
        status: "Mobile Developer",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Kepseu Franky",
        status: "Occupé pour le moment",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Paule Ekam",
        status: "Road to enginneering",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Djongang Darylle",
        status: "Time to sleep",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Tchouankeu Maeva",
        status: "A l'école",
        icon: "assets/person.svg"),
  ];

  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nouveau Groupe",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text("Ajouter des membres",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 26,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(children: [
          ListView.builder(
              itemCount: contacts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: groups.length > 0 ? 90 : 10,
                  );
                }
                return InkWell(
                  onTap: () {
                    if (contacts[index - 1].select == false) {
                      setState(() {
                        contacts[index - 1].select = true;
                        groups.add(contacts[index - 1]);
                      });
                    } else {
                      setState(() {
                        contacts[index - 1].select = false;
                        groups.remove(contacts[index - 1]);
                      });
                    }
                  },
                  child: ContactCard(
                    contact: contacts[index - 1],
                  ),
                );
              }),
          groups.length != 0
              ? Column(
                  children: [
                    Container(
                        height: 75,
                        color: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: contacts.length,
                            itemBuilder: (context, index) {
                              if (contacts[index].select == true) {
                                return InkWell(
                                    onTap: () {
                                      setState(() {
                                        groups.remove(contacts[index]);
                                        contacts[index].select = false;
                                      });
                                    },
                                    child:
                                        AvatardCard(contact: contacts[index]));
                              } else {
                                return Container();
                              }
                            })),
                    // Divider(
                    //   thickness: 1,
                    // )
                  ],
                )
              : Container()
        ]));
  }
}
