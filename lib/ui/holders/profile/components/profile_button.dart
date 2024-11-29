import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../my_profile/my_profile_page.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xDBE0E0E0),
          ),
          child: InkWell(
            splashColor: Colors.black,
            borderRadius: BorderRadius.circular(10.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfilePage()),
              );
              print('내 프로필 보기 클릭됨');

            },
            child: Center(
              child: Text(
                "내 프로필 보기",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
