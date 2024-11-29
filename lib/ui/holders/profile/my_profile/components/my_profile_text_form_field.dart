import 'package:flutter/material.dart';

class ProfileTextFormField extends StatelessWidget {
  final String text;
  final String hintText;

  const ProfileTextFormField({required this.text, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // 텍스트와 입력 필드 상단을 정렬
      children: [
        SizedBox(
          width: 100, // 일정한 너비를 설정하여 텍스트 정렬
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // 내부 여백 조정
                hintText: hintText,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
