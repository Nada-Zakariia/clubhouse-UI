import 'dart:math';
import 'package:club_house/Profile.dart';
import 'package:club_house/data.dart';
import 'package:club_house/home_user_profile.dart';
import 'package:club_house/models/rooms.dart';
import 'package:club_house/widgets/UserProfileImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  final Room room;
  const RoomScreen({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leadingWidth: 100,
        elevation: 0,
        leading: TextButton.icon(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
          icon: const Icon(CupertinoIcons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
          label: const Text('Back'),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.doc)),
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
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        room.name,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Icon(CupertinoIcons.ellipsis)
                    ],
                  ),
                  Text(
                    room.club,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  )
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(15.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                children: room.speakers
                    .map((e) => HomeUser(
                          imageUrl: e.imageUrl,
                          name: e.firstName,
                          size: 70,
                          isNew: Random().nextBool(),
                          isMute: Random().nextBool(),
                          isNotMute: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Followed By Speakers',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.grey[600]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(15.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                children: room.followBySpeakers
                    .map((e) => HomeUser(
                          imageUrl: e.imageUrl,
                          name: e.firstName,
                          size: 45,
                          isNew: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Others In The Room',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.grey[600]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(15.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                children: room.others
                    .map((e) => HomeUser(
                          imageUrl: e.imageUrl,
                          name: e.firstName,
                          size: 45,
                          isNew: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 70))
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  backgroundColor: const Color.fromARGB(255, 222, 182, 182),
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              child: const Text(
                'Leave quietly',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 222, 182, 182),
                    ),
                    child: const Icon(
                      CupertinoIcons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 222, 182, 182),
                    ),
                    child: const Icon(
                      CupertinoIcons.hand_raised,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
