import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ev_charging_locator/locator.dart';
import 'package:ev_charging_locator/screens/profile_page.dart';
import 'package:ev_charging_locator/screens/onboard.dart';
import 'package:ev_charging_locator/screens/welcome.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // setupServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ev_charging_locator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Product',
      ),
      home: const ProfilePage(),
    );
  }
}
