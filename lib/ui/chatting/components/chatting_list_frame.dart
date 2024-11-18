import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChattingListFrame extends StatelessWidget {
  const ChattingListFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50), // 이미지 둥글게 (원형으로 만들기 위해 큰 값 설정)
              child: Image.network(
                'https://cdn.ijejutoday.com/news/photo/202409/305775_313287_2611.jpg',
                width: 60, // 이미지 크기 설정
                height: 60,
                fit: BoxFit.cover, // 이미지가 잘리는 것 방지
              ),
            ),
            SizedBox(width: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '동행 구해요',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        '11.18',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13
                        ),
                      ),
                    ],
                  ),
                  Text(
                      '-------------------------채팅 내용-------------------------',
                    style: TextStyle(
                        color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
