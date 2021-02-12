import 'package:adhit_chatty/theme.dart';
import 'package:adhit_chatty/widgets/receiver_bubble.dart';
import 'package:adhit_chatty/widgets/sending_bubble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(48)),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/group1.png',
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IDN Academy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  '21 members',
                  style: TextStyle(
                    color: Color(0xff808BA2),
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/call.png',
              width: 55,
              height: 55,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              ReceiverBubble(
                imageUrl: 'assets/images/friend1.png',
                text: 'Siapa yang abis mandi?',
                time: '09:00',
              ),
              ReceiverBubble(
                imageUrl: 'assets/images/friend4.png',
                text: 'Bukan ana',
                time: '09:01',
              ),
              SendingBubble(
                imageUrl: 'assets/images/me.png',
                text: 'Samsul boong ae',
                time: '09:02',
              ),
              ReceiverBubble(
                imageUrl: 'assets/images/friend3.png',
                text: 'Weh samsul boong ae',
                time: '09:02',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'Type message..',
                    hintStyle: TextStyle(
                      fontSize: 14,
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                print('tapped');
              },
              child: Image.asset(
                'assets/images/send_btn.png',
                width: 35,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatField(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: false,
        child: Column(
          children: <Widget>[
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
