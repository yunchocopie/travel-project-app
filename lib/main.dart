import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/home_page.dart';
import 'package:team_project/ui/holders/main_holder.dart';
import 'package:team_project/ui/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage()
    );
  }
}