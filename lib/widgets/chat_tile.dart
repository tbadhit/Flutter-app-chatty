import 'package:adhit_chatty/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:adhit_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unRead;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unRead});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatPage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unRead
                      ? subtitleTextStyle.copyWith(color: blackColor)
                      : subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: subtitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
