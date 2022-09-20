import 'package:club_house/Profile.dart';
import 'package:club_house/data.dart';
import 'package:club_house/room_card.dart';
import 'package:club_house/widgets/UserProfileImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.envelope_open)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.calendar)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Profile(
                            image: currentUser.imageUrl,
                            firstName: currentUser.firstName,
                            lastName: currentUser.lastName,
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: UserProfileImage(imageUrl: currentUser.imageUrl, size: 35),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              children: [
                ...roomList.map((e) => RoomCard(room: e)),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.05),
                    Theme.of(context).scaffoldBackgroundColor,
                  ])),
            ),
          ),
          Positioned(
            bottom: 60,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).accentColor,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.all(18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  size: 18,
                ),
                label: const Text(
                  'Create New Room',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }
}
