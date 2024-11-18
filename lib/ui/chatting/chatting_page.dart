import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/finding/components/finding_text.dart';

import 'components/chatting_list_frame.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(CupertinoIcons.add, color: Color(0xDB06AB73)),
              onPressed: () {
                // 첫 번째 아이콘 동작
              },
            ),
          ),
        ],
        title: Text(
          '채팅',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CustomScrollView(
          slivers: [
            ChattingListFrame()
          ],
        ),
      ),
    );
  }
}


