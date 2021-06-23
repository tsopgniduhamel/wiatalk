import 'package:final_wiatalk/models/chatModel.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class AvatardCard extends StatelessWidget {
  const AvatardCard({Key key, this.contact}) : super(key: key);
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(children: [
            CircleAvatar(
              radius: 23,
              child: SvgPicture.asset(
                contact.icon,
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              backgroundColor: Colors.blue.shade400,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 11,
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 13,
                ),
              ),
            )
          ]),
          SizedBox(
            height: 2,
          ),
          Text(
            contact.name,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
