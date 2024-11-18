import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'finding_detail_grey_blank.dart';

class FindingDetailBody extends StatelessWidget {
  const FindingDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xE7CBF1E4),
                        borderRadius: BorderRadius.circular(5), // 둥글게 만들기
                      ),
                      child: Center(
                        child: Text(
                          '모집중',
                          style: TextStyle(
                            color: Color(0xDB06AB73),
                            fontWeight: FontWeight.bold, // 텍스트 강조
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(7), // 둥글게 만들기
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.hand_thumbsup,
                            color: Colors.black45,
                            size: 18,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold, // 텍스트 강조
                                fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '동행 구해요',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '24.11.17',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: Row(
                    children: [
                      Image.asset(
                          "assets/images/finding_detail_icon.png",
                        height: 30,
                        width: 30,
                        color: Color(0xDB06AB73),
                      ),
                      SizedBox(width: 15,),
                      Text(
                        '동행 소개',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  '차량은 SUV 예약을 했습니다.\n숙소는 00호텔과 @@호텔을 예약했습니다.\n숙소는 자유롭게 선택하시고 차량공유와 여행일정만 맞으면 됩니다.',
                  style: TextStyle(
                    color: Colors.black54
                  ),
                ),

              ],
            ),
          ),
          GreyBlank(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/finding_detail_icon2.png",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 15,),
                    Text(
                      '여행 일정',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.calendar,
                      size: 30,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '2024.11.21 ~ 2024.11.27(7일)',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                          // fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                        CupertinoIcons.location_solid,
                      size: 30,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '2024.11.21 ~ 2024.11.27(7일)',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                          // fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                        CupertinoIcons.person,
                      size: 30,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '2024.11.21 ~ 2024.11.27(7일)',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        // fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          GreyBlank()
        ],
      ),
    );
  }
}
