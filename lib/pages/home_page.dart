import 'package:adhit_chatty/theme.dart';
import 'package:adhit_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  width: 150,
                  height: 150,
                ),
                Text(
                  'Tubagus Adhitya Permana',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Android Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Febriyan',
                        text: 'Sorry dit, saya lupa siram...',
                        time: 'Now',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Novandi',
                        text: 'Makasih dit, tadi alhamdu...',
                        time: '21:00',
                        unRead: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'IDN Academy',
                        text: 'Bagi yang belum meng...',
                        time: '18:30',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Flutter ID',
                        text: 'Bagaimana cara mena...',
                        time: '19:00',
                        unRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Kotlin Indonesia',
                        text: 'Variable ini kok bisa gi...',
                        time: '19:00',
                        unRead: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
