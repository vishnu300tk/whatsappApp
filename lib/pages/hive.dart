import 'package:hive/hive.dart';

List<String> recentChats = [
    "Don't forget, we havem a meeting",
    "Just saw this ",
    "Hey, do you have any plans today",
    "Remember to pick up milk ",
    "I'm so proud of you ",
    "please send me the report ",
    "Let's grab lunch together ",
    "I need your advice ",
    "Sending virtual hugs your way",
    "hi how are you",
  ];

@HiveType(typeId: 0)
class MessageModel extends HiveObject {
  @HiveField(0)
  late String message;

  MessageModel(this.message);
}



