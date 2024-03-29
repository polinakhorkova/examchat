import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:examchat/routes/pages.dart';
import 'package:examchat/services/socket_service.dart';
import 'package:examchat/services/user_service.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    )
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => SocketService().init());
  await Get.putAsync(() => UserService().init());
}
