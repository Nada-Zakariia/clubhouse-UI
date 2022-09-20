import 'package:club_house/models/rooms.dart';
import 'package:club_house/room_screen.dart';
import 'package:club_house/widgets/UserProfileImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final Room room;
  const RoomCard({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: ((context) => RoomScreen(room: room)))),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  room.name,
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Text(
                  room.club,
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        child: Stack(children: [
                          UserProfileImage(
                              imageUrl: room.speakers[0].imageUrl, size: 48.0),
                          Positioned(
                            left: 24.0,
                            top: 24.0,
                            child: UserProfileImage(
                                imageUrl: room.speakers[1].imageUrl,
                                size: 48.0),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) => Text(
                                  '${e.firstName}${e.lastName} ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w200),
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Text.rich(
                                style: TextStyle(color: Colors.grey),
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text:
                                            '${room.speakers.length + room.followBySpeakers.length + room.others.length}'),
                                    WidgetSpan(
                                        child: Icon(
                                      CupertinoIcons.person_fill,
                                      size: 17,
                                    )),
                                    TextSpan(
                                        text:
                                            '            ${room.speakers.length} '),
                                    WidgetSpan(
                                        child: Icon(
                                      CupertinoIcons.chat_bubble_fill,
                                      size: 17,
                                    ))
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
