// import 'package:final_wiatalk/customUI/ButtonCard.dart';
// import 'package:final_wiatalk/models/chatModel.dart';
// import 'package:final_wiatalk/pages/chat.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   ChatModel sourceChat;
//   List<ChatModel> chatmodels = [
//     ChatModel(
//         id: 1,
//         name: "Ahmadou Djarou",
//         icon: "person.svg",
//         isGroup: false,
//         time: "13:37",
//         currentMessage: "Bonjour gars on dit quoi ?"),
//     ChatModel(
//         id: 2,
//         name: "Djongang Darylle",
//         icon: "person.svg",
//         isGroup: false,
//         time: "13:37",
//         currentMessage: "Bonjour gars on dit quoi ?"),
//     ChatModel(
//         id: 3,
//         name: "Ekam Paule",
//         icon: "person.svg",
//         isGroup: false,
//         time: "13:37",
//         currentMessage: "Bonjour gars on dit quoi ?"),
//     ChatModel(
//         id: 4,
//         name: "Kepseu Franky",
//         icon: "person.svg",
//         isGroup: false,
//         time: "13:37",
//         currentMessage: "Bonjour gars on dit quoi ?"),
//     ChatModel(
//         id: 5,
//         name: "Tchouankeu Maeva",
//         icon: "person.svg",
//         isGroup: false,
//         time: "13:37",
//         currentMessage: "Bonjour gars on dit quoi ?"),
//     ChatModel(
//         id: 6,
//         name: "Tsopgni Duhamel",
//         icon: "person.svg",
//         isGroup: false,
//         time: "13:37",
//         currentMessage: "Bonjour gars on dit quoi ?"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: chatmodels.length,
//           itemBuilder: (context, index) => InkWell(
//                 onTap: () {
//                   print("tapé");
//                   sourceChat = chatmodels.removeAt(index);
//                   Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                           builder: (builder) => Chat(
//                                 chatmodels: chatmodels,
//                               )));
//                 },
//                 child: ButtonCard(
//                   name: chatmodels[index].name,
//                   icon: Icons.person,
//                 ),
//               )),
//     );
//   }
// }
