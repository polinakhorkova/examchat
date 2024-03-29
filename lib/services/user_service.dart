import 'package:get/get.dart';
import 'package:examchat/models/chat_message/chat_message.dart';
import 'package:examchat/services/socket_service.dart';

class UserService extends GetxService {
  static UserService get to =>
      Get.find(); 
  String username = '';
  final messages = RxList<ChatMessage>.empty();

  Future<UserService> init() async {
    return this;
  }

  void setUsernameAndConnect(String user) {
    username = user;
    SocketService.to.connect();
  }

  void addMessageToList(ChatMessage message) {
    printInfo(info: 'New message $message');
    messages.add(message);
  }

  void clearMessage() => messages.clear();
}