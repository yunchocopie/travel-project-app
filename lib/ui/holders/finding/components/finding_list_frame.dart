import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/finding/finding_detail/finding_detail_page.dart';

class FindingListFrame extends StatelessWidget {
  final String title;
  final String destination;
  final String period;
  final int people;
  final String img;

  const FindingListFrame({
    required this.title,
    required this.destination,
    required this.period,
    required this.people,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FindingDetailPage()),
          );
          print('글 클릭됨');

        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded( // Text의 공간을 조정
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1, // 한 줄로 제한
                        overflow: TextOverflow.ellipsis, // 글자 초과 시 ... 표시
                      ),
                      SizedBox(height: 15),
                      Text(
                        destination,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        period,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '${people}명 모집',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10), // Text와 이미지 간 여백 추가
                Container(
                  height: double.infinity,
                  width: 115,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      img,
                      fit: BoxFit.cover, // 이미지 꽉 채우기
                    ),
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
