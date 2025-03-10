import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_pattern/app/commons/lang_switcher.dart';

import '../controllers/home_controller.dart';

main() {
  runApp(const GetMaterialApp(home: HomeView()));
}

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        centerTitle: true,
        actions: const [LangSwitcher()],
      ),
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home'.tr),
            Text('about'.tr),
            Text('contact'.tr),
            Text('login'.tr),
            Text('register'.tr),
            Text('logout'.tr),
            Text('profile'.tr),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('id', 'ID'));
              },
              child: const Text('Switch to Indonesian'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('ko', 'KR'));
                print('home'.tr);
              },
              child: const Text('Switch to Korean'),
            ),
          ],
        ),
      ),
    );
  }
}
