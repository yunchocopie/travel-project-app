import 'package:flutter/material.dart';

import 'my_profile_text_form_field.dart';
import 'my_profile_text_form_field_phone.dart';



class ProfileTextForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key
  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          ProfileTextFormField(text: '이름', hintText: '홍길동',),
          SizedBox(height: 10),
          ProfileTextFormField(text: '닉네임', hintText: '빙하앓이',),
          SizedBox(height: 10),
          ProfileTextFormField(text: '성별', hintText: '남자',),
          SizedBox(height: 10),
          ProfileTextFormField(text: '여행 스타일', hintText: '자연스러움 추구'),
          SizedBox(height: 10),
          ProfileTextFormField(text: '음식 스타일', hintText: '양식, 중식',),
          // SizedBox(height: 10),
          // ProfileTextFormFieldPhone(text: '휴대폰'),
        ],
      ),
    );
  }
}
