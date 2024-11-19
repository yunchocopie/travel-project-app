import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/profile_menu_icon1.png",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    '동행 찾기',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/profile_menu_icon2.png",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    '채팅',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
