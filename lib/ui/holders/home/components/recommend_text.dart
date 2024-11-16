import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendText extends StatelessWidget {
  const RecommendText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: '인기있는 여행지 추천',
                  style: TextStyle(
                    color: Colors.black, // 특정 부분의 색상 변경
                    fontSize: 20
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // 가까이 있는 매장 더보기 버튼
              InkWell(
                onTap: () {
                  print("더보기 버튼 클릭");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => NearMeStorePage(),
                  //   ),
                  // );
                },
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.chevron_forward,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
