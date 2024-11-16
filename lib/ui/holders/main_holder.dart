import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/finding/finding_page.dart';
import 'package:team_project/ui/holders/profile/profile_page.dart';
import 'home/home_page.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _index,
        children: [
          HomePage(),
          FindingPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.zoom_in),
            label: '동행 찾기',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '프로필',
          ),
        ],
        onTap: (value) {
          setState(() {
            _index = value;
            print("클릭됨 ${value}");
          });
        },
        currentIndex: _index,
      ),
    );
  }
}
