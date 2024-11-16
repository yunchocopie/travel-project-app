import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendFrame extends StatelessWidget {
  final String recommendName;
  final double stars;
  final String imageUrl;

  const RecommendFrame({
    required this.recommendName,
    required this.stars,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.3,
              color: Colors.white,
            ),
          ),
          width: 215,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildClipRRect(topRight: 10, topLeft: 10),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // 요소를 양 끝으로 배치
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: recommendName,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          CupertinoIcons.heart_fill,
                          size: 17,
                          color: Colors.grey,
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.star_fill,
                          size: 17,
                          color: Color(0xDB06AB73),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "${stars}",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {
        // TODO: 매장 연결
      },
    );
  }

  Widget buildClipRRect({double topLeft = 0, double topRight = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topRight),
        topRight: Radius.circular(topLeft),
      ),
      child: Stack(children: [
        Image.network(
          imageUrl,
          width: 200,
          height: 125,
          fit: BoxFit.cover,
        ),
        const Positioned(
          top: 178,
          right: 80,
          child: Row(
            children: [
              Icon(
                CupertinoIcons.heart_fill,
                size: 13,
                color: Colors.redAccent,
              ),
              SizedBox(width: 3),
              Text(
                "13",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 3),
              Icon(
                CupertinoIcons.ellipses_bubble_fill,
                size: 13,
                color: Colors.white,
              ),
              SizedBox(width: 3),
              Text(
                "214",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 3),
            ],
          ),
        ),
      ]),
    );
  }
}
