import 'package:final_wiatalk/individualPage.dart';
import 'package:final_wiatalk/models/chatModel.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => IndividualPage(
                      chatModel: this.chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                "assets/" + chatModel.icon,
                color: Colors.white,
                height: 40,
                width: 40,
              ),
              backgroundColor: Colors.blueAccent,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 1),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
