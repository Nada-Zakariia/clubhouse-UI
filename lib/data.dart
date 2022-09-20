import 'package:club_house/models/rooms.dart';
import 'package:club_house/models/users.dart';

const User currentUser = User(
  firstName: 'Noelle ',
  lastName: 'Silva',
  imageUrl:
      'https://pbs.twimg.com/profile_images/1334784311556329472/7VFvx_bt_400x400.jpg',
);

const List<User> allUsers = [
  User(
    firstName: 'William ',
    lastName: 'Vangeance',
    imageUrl: 'https://pbs.twimg.com/media/FJKTAEXXoAIob2-.jpg',
  ),
  User(
    firstName: 'Yuno ',
    lastName: 'Grinberryall',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-W-b_hQMmNlrdsLjf0UdGcCKxLgNZCzwNzA&usqp=CAU',
  ),
  User(
    firstName: 'Langris ',
    lastName: 'Vaude',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz1EDSQl0ijnB4P_TqklLAVwE8Y1gok8dpaw&usqp=CAU',
  ),
  User(
    firstName: 'Klaus ',
    lastName: 'Lunettes',
    imageUrl: 'https://pbs.twimg.com/media/EzQ61a9VIAEPYje.jpg',
  ),
  User(
    firstName: 'Mimosa ',
    lastName: 'Vermillion',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw3HQhxGeskDg7dVHHJOgJPgarDgRyu-P2Xg&usqp=CAU',
  ),
  User(
    firstName: 'Nozel ',
    lastName: 'Silva',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnCWX7vDDvd2fwI1TvSUigXemf9QMIkJfjDA&usqp=CAU',
  ),
  User(
    firstName: 'Nebra ',
    lastName: 'Silva',
    imageUrl:
        'https://pbs.twimg.com/profile_images/1325052512727076864/w5n8zTiV_400x400.jpg',
  ),
  User(
    firstName: 'Rob ',
    lastName: 'Vitesse',
    imageUrl: 'https://cdn.myanimelist.net/images/characters/8/402134.jpg',
  ),
  User(
    firstName: 'Acier ',
    lastName: 'Silva',
    imageUrl:
        'https://pbs.twimg.com/media/FA6TZk3VIAI5Ecj?format=jpg&name=4096x4096',
  ),
  User(
    firstName: 'Solid ',
    lastName: 'Silva',
    imageUrl: 'https://pbs.twimg.com/media/EvE5VGeXAAU6ysL.jpg',
  ),
  User(
    firstName: 'Fuegoleon ',
    lastName: 'Vermillion',
    imageUrl:
        'https://pbs.twimg.com/profile_images/1174496316933726211/AG9Oxa-w_400x400.jpg',
  ),
  User(
    firstName: 'Leopold ',
    lastName: 'Vermillion',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTxDPxiobm-xJBe-l4EItXF7b2Vq8yXcq1YA&usqp=CAU',
  ),
  User(
    firstName: 'Randall ',
    lastName: 'Luftair',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyE6riTJUTTUq2Rcfdx-xzOfR3X_Ivm6-5ZlY8C6_Q9gQlISHtRarFeuQwIa0lvaex5Nc&usqp=CAU',
  ),
  User(
    firstName: 'Ben ',
    lastName: 'Benfunk',
    imageUrl: 'https://cdn.myanimelist.net/images/characters/5/385135.jpg',
  ),
  User(
    firstName: 'Ruben ',
    lastName: 'Chagar',
    imageUrl: 'https://cdn.myanimelist.net/images/characters/7/385137.jpg',
  ),
  User(
    firstName: 'Yami ',
    lastName: 'Sukehiro',
    imageUrl: 'https://pbs.twimg.com/media/E7Gt0MEWQAA16m1.jpg',
  ),
  User(
    firstName: 'Asta',
    lastName: ' ',
    imageUrl: 'https://i1.sndcdn.com/artworks-000386696049-vi8lot-t500x500.jpg',
  ),
  User(
    firstName: 'Magna ',
    lastName: 'Swing',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTFk2RDDmq5-n1GiSW0zbT6slYowQI6IulMguEjFnCzwIxuw8QfkmcSkNp5f8eeNX1w-4&usqp=CAU',
  ),
  User(
    firstName: 'Finral ',
    lastName: 'Roulacase',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgGAqKcaeqdVdxo_QZ5gSRCEHkxfU3-LM8d6uznMpGcGvYO8UL_2V2bgiUjA7T92EKnNw&usqp=CAU',
  ),
  User(
    firstName: 'Vanessa ',
    lastName: 'Enoteca',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2VciuyFhopaQtWIjsdPwdrpluGYSqd2Loqrtsvh7Ow797Y9Iwm4OJhEF4yDrJEejy4Kg&usqp=CAU',
  ),
  User(
    firstName: 'Charlotte ',
    lastName: 'Roselei',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgh03PupEFTC-q6lfAnHL_iEcNs1i8y-_gPw&usqp=CAU',
  ),
  User(
    firstName: 'Sol ',
    lastName: 'Marron',
    imageUrl: 'https://pbs.twimg.com/media/EYUd1UVXgAAQuzB.jpg',
  ),
  User(
    firstName: 'Puli ',
    lastName: 'Angel',
    imageUrl: 'https://pbs.twimg.com/media/ElyKwgKWMAAKK6O.jpg',
  ),
  User(
    firstName: 'Wainsley',
    lastName: '',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkLlUiEkjoD2N7g45dZJ9I4SmAMQ48WzfmgqZnDo1KWQaqWH_zKLkHFeTOcYW-QLlowqw&usqp=CAU',
  ),
  User(
    firstName: 'patolli',
    lastName: '',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLOFLnI37Gh_tfoQAi7oP-RbRmqCM9SPLwQywIDW7IQXoUXHgcwfK7cRzddhY-f6f05UM&usqp=CAU',
  ),
  User(
    firstName: 'Rhya',
    lastName: '',
    imageUrl: 'https://pbs.twimg.com/media/EZtfxi1UMAAjhK3.jpg:large',
  ),
  User(
    firstName: 'Vetto',
    lastName: '',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSARKePhOWiV9sIiFQqFWh5zgmb69hO_SuYJA&usqp=CAU',
  ),
  User(
    firstName: 'Rades ',
    lastName: 'Spirito',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWxICTOiM-uJSFgRAHukUxd1UtH-8_Z2rAZvXcT9lEcC_WK9qKHDKmQAC3x6VsgbeIFjE&usqp=CAU',
  ),
  User(
    firstName: 'Sally ',
    lastName: '',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLR2eEyhEYdDjsl6LdctDdKlBO62SDHNXLwM-hrnq5XY8N_imWn2F8Zr5zTy06yI4bIck&usqp=CAU',
  ),
];

final List<Room> roomList = [
  Room(
    club: 'Golden Dawn',
    name: '1st Place',
    speakers: List<User>.from(allUsers).getRange(0, 5).toList(),
    followBySpeakers: List<User>.from(allUsers),
    others: List<User>.from(allUsers),
  ),
  Room(
    club: 'Black Bull',
    name: '2nd Place',
    speakers: List<User>.from(allUsers).getRange(15, 20).toList(),
    followBySpeakers: List<User>.from(allUsers),
    others: List<User>.from(allUsers),
  ),
  Room(
    club: 'Silver Eagle',
    name: '3rd Place',
    speakers: List<User>.from(allUsers).getRange(5, 10).toList(),
    followBySpeakers: List<User>.from(allUsers),
    others: List<User>.from(allUsers),
  ),
  Room(
    club: 'Crimson Lion',
    name: '4th Place',
    speakers: List<User>.from(allUsers).getRange(10, 15).toList(),
    followBySpeakers: List<User>.from(allUsers),
    others: List<User>.from(allUsers),
  ),
  Room(
    club: 'Blue Rose',
    name: '5th Place',
    speakers: List<User>.from(allUsers).getRange(20, 24).toList(),
    followBySpeakers: List<User>.from(allUsers),
    others: List<User>.from(allUsers),
  ),
  Room(
    club: 'Eye of the Midnight Sun',
    name: 'evil clan',
    speakers: List<User>.from(allUsers).getRange(24, 29).toList(),
    followBySpeakers: List<User>.from(allUsers),
    others: List<User>.from(allUsers),
  ),
];
