import 'package:flutter/material.dart';

class GreyBlank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        height: 10,
        child: Container(
          color: Colors.grey[100],
        ),
      ),
    );
  }
}