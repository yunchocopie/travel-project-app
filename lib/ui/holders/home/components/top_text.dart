import 'package:flutter/cupertino.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 14.0, left: 14, top: 20, bottom: 14),
        child: Container(
          child: Text(
            'travel과 힐링되는 여행을 함께해요!',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
