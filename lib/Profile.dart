import 'package:club_house/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String image;
  final String firstName;
  final String lastName;

  const Profile(
      {super.key,
      required this.image,
      required this.firstName,
      required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 207, 193, 246),
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
        ),
        backgroundColor: const Color.fromARGB(255, 207, 193, 246),
        body: SafeArea(
            child: Center(
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(image),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text(
                firstName + lastName,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 53, 21, 59),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(roomList[1].club,
                      style: const TextStyle(color: Colors.white, fontSize: 20)),
                ],

                //mainAxisAlignment: MainAxisAlignment.,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Birthday: November 15th',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Magic Attribute: Water Magic',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.add,
                      size: 20,
                    ),
                    label: const Text(
                      'Add Friend',
                      style: TextStyle(fontSize: 15),
                    ),
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: const Color.fromARGB(255, 53, 21, 59),
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.text_bubble,
                      size: 20,
                    ),
                    label: const Text(
                      'Message',
                      style: TextStyle(fontSize: 15),
                    ),
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: const Color.fromARGB(255, 53, 21, 59),
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                ],
              ),
            )
          ]),
        )));
  }
}
