import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50), // 이미지 둥글게 (원형으로 만들기 위해 큰 값 설정)
              child: Image.asset(
                'assets/images/profile_user_icon.png',
                width: 60, // 이미지 크기 설정
                height: 60,
                fit: BoxFit.cover, // 이미지가 잘리는 것 방지
              ),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '빙하앓이',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                    'user1@naver.com',
                  style: TextStyle(
                      color: Colors.black54
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
