import 'package:adhit_chatty/theme.dart';
import 'package:flutter/material.dart';

class SendingBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  SendingBubble({this.imageUrl, this.text, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(color: Color(0xff505C6B), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
