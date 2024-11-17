import 'package:flutter/material.dart';

class Ad2 extends StatelessWidget {
  const Ad2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
        child: Container(
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://cdn.pinpointnews.co.kr/news/photo/202205/116953_133994_1751.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
