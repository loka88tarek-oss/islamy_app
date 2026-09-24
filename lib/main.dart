import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_thems.dart';
import 'package:islamy_app/screens/home_screen.dart';
import 'package:islamy_app/screens/on_boarding_screen.dart';
import 'package:islamy_app/tabs/quran_tab/views/sura_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraView.suraRouteName:(_)=>SuraView()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThems.theme,
      home: OnBoardingScreen(),
      
    );
  }
}
