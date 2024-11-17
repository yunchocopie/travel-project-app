import 'package:flutter/material.dart';

import 'join_button.dart';
import 'join_extra_button.dart';
import 'join_text_form_field.dart';

class JoinBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      JoinTextFormField(
                        text: '아이디',
                        hinttext: '아이디 입력',
                      ),
                      SizedBox(height: 5),
                      JoinTextFormField(
                        text: '비밀번호',
                        hinttext: '비밀번호 입력',
                      ),
                      SizedBox(height: 5),
                      JoinTextFormField(
                        text: '비밀번호 확인',
                        hinttext: '비밀번호 재입력',
                      ),
                      SizedBox(height: 5),
                      JoinTextFormField(
                        text: '별명',
                        hinttext: '별명 입력',
                      ),
                      SizedBox(height: 5),
                      JoinTextFormField(
                        text: '전화번호',
                        hinttext: 'ex)01012345678',
                      ),
                      SizedBox(height: 5),
                      JoinTextFormField(
                        text: '이메일',
                        hinttext: 'ex)ssar1234@nate.com',
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                JoinExtraButton(),
                SizedBox(height: 10),
                JoinButton(formKey: _formKey)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
