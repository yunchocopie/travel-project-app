import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GotoChatting extends StatelessWidget {
  const GotoChatting({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14, top: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
          height: 90,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '내 채팅',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '동행모임 채팅',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: Color(0xDB06AB73),
                  size: 45,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
