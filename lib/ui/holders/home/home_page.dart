import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/components/goto_finding.dart';
import 'package:team_project/ui/holders/home/components/recommend.dart';

import 'components/ad.dart';
import 'components/goto_chatting.dart';
import 'components/top_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xD3F6F6F6),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Color(0xD3F6F6F6),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/images/travel_logo.png',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(CupertinoIcons.bell_fill, color: Color(0xDB06AB73)), // 오른쪽 아이콘
              onPressed: () {
                // 오른쪽 아이콘 동작
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CustomScrollView(
          slivers: [
            TopText(),
            Ad(),
            GotoFinding(),
            GotoChatting(),
            Recommend()
            //GreyBlank(),
            // ScheduledPopup(),
            // NearbyPopup(),
          ],
        ),
      ),
    );
  }
}
