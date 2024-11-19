import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/finding/components/finding_text.dart';

import 'components/profile_button.dart';
import 'components/profile_menu.dart';
import 'components/profile_user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xD3F6F6F6),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Color(0xD3F6F6F6),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: IconButton(
              icon: Icon(CupertinoIcons.bell_fill, color: Color(0xDB06AB73)),
              onPressed: () {
                // 첫 번째 아이콘 동작
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(CupertinoIcons.settings, color: Color(0xDB06AB73)),
              onPressed: () {
                // 두 번째 아이콘 동작
              },
            ),
          ),
        ],
        title: Text(
          '프로필',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CustomScrollView(
          slivers: [
            ProfileUser(),
            ProfileButton(),
            ProfileMenu()
          ],
        ),
      ),
    );
  }
}


