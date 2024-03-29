import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:examchat/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(111, 131, 214, 0.5),
        appBar: AppBar(
          title: const Text(
            'Вход',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(84, 71, 159, 0.5),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Введите никнейм!",
                style: TextStyle(
                    fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(padding: EdgeInsets.only(left: 400, right: 400),
             child: TextField(
                cursorColor: Color.fromRGBO(111, 131, 214, 0.5),
                controller: controller.textCtrl,
                onSubmitted: (value) => controller.signIn(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),),
            ],
          ),
        ));
  }
}