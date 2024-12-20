import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindingDetailAppbar extends StatelessWidget {
  const FindingDetailAppbar({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // pinned: true, TODO: 스크롤하면 다른 디자인 앱바 나오게 하기
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, size: 18),
        color: Colors.white,
      ),
      actions: [
        IconButton(
          onPressed: () {
            // TODO : 하트 기능
          },
          icon: Icon(CupertinoIcons.heart),
          color: Colors.white,
        ),
        SizedBox(width: 10),
      ],
      expandedHeight: screenHeight * 0.32,
      // 사진이 차지하는 화면 비율
      flexibleSpace: PageView.builder(
        itemCount: 1, // 사진 여러개 일시 갯수 입력하고 옆으로 넘기기
        itemBuilder: (context, index) {
          return Image.network(
            // "https://picsum.photos/id/${index + 1}/200/300",
            'https://cdn.ijejutoday.com/news/photo/202409/305775_313287_2611.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}