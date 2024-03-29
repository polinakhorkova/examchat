import 'package:get/get.dart';
//import 'package:examchat/modules/chat/chat_blinding.dart';
//import 'package:examchat/modules/chat/chat_page.dart';
import 'package:examchat/modules/home/home_binding.dart';
import 'package:examchat/modules/home/home_page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: Routes.CHAT,
    //   page: () => ChatPage(),
    //   binding: ChatBinding(),
    // ),
  ];
}