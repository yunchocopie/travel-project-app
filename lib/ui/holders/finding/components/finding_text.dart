import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindingText extends StatelessWidget {
  const FindingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 14.0, left: 14, top: 20, bottom: 14),
        child: Container(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Travel Tie와 함께 \n',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: '\'안전한\' ',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xDB06AB73), // 원하는 색상으로 변경
                  ),
                ),
                TextSpan(
                  text: '동행을 찾고 있어요!',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
