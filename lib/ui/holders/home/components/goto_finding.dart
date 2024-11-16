import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GotoFinding extends StatelessWidget {
  const GotoFinding({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xDB06AB73),
            borderRadius: BorderRadius.circular(15)
          ),
          height: 115,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/main_finding_icon.png',
                  height: 60,
                  width: 60,
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '동행 찾기',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      '마음 맞는 여행 친구 찾기',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.chevron_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
