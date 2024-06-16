import 'package:deliverygorceryapp/app/profile_type/profile_type_binding.dart';
import 'package:deliverygorceryapp/delivery_app/Homepage/home_page.dart';
import 'package:deliverygorceryapp/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.blue,
        ),
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: false,
      title: "My Hive Business",
      initialBinding: ProfileTypeBinding(),
      home: HomeScreen(),
      // SplashScreen(),
      //HepSupport(),
      //ReviewPoint(),
      //SplashScreen(),
      getPages: AppPages.pages,
    );
  }
}
