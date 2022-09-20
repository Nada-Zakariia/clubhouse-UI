import 'package:club_house/widgets/UserProfileImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMute;
  final bool isNotMute;

  const HomeUser(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.size,
      this.isNew = false,
      this.isMute = false,
      this.isNotMute = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: UserProfileImage(imageUrl: imageUrl, size: size),
            ),
            if (isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black12,
                            blurRadius: 4),
                      ]),
                  child: const Text(
                    '👋',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            if (isMute)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black12,
                            blurRadius: 4),
                      ]),
                  child: const Icon(
                    CupertinoIcons.mic_slash_fill,
                    size: 10,
                  ),
                ),
              )
            else if (isNotMute)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black12,
                            blurRadius: 4),
                      ]),
                  child: const Icon(
                    CupertinoIcons.mic_fill,
                    size: 10,
                  ),
                ),
              )
          ],
        ),
        Flexible(
            child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}
