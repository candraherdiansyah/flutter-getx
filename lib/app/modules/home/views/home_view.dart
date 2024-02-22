import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_getx/app/modules/profile/views/profile_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/profile');
              },
              child: Text("Pindah ke Profil"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/counter');
              },
              child: Text("Pindah ke Halaman Counter"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/biodata');
              },
              child: Text("Pindah ke Halaman Biodata"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/kategori');
              },
              child: Text("Pindah ke Halaman Kategori"),
            )
          ],
        ),
      ),
    );
  }
}
