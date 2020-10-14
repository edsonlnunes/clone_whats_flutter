import 'package:flutter/material.dart';
import 'package:wpp_clone/controllers/theme_controller.dart';
import 'package:wpp_clone/pages/home_page.dart';
import 'package:wpp_clone/themes/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ThemeController.themeMode,
      builder: (_, themeMode, __) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          darkTheme: ThemeData.dark(),
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            accentColor: kAccentColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
