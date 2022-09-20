import 'package:club_house/models/users.dart';


class Room {
  final String club;
  final String name;
  final List<User> speakers;
  final List<User> followBySpeakers;
  final List<User> others;

  Room({
    required this.club,
    required this.name,
    this.speakers = const [],
    this.followBySpeakers = const [],
    this.others = const [],
  });
}
