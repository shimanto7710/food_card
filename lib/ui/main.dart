import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_card/ui/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../routes/app_pages.dart';
import '../routes/routes.dart';
import 'home/views/example.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: Routes.splash,
      getPages: AppPages.appRoutes(),
      home: HomeView(),
    );
  }
}

