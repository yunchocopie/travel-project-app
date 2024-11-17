import 'package:flutter/material.dart';

import 'login_button.dart';
import 'login_extra_button.dart';
import 'login_text_form_field.dart';
import 'login_to_join_button.dart';

class LoginBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 55),
              Image.asset('assets/images/travel_logo.png', width: 130, height: 130,),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    LoginTextFormField(
                      text: '아이디',
                      hinttext: '아이디 입력',
                    ),
                    SizedBox(height: 5),
                    LoginTextFormField(
                      text: '비밀번호',
                      hinttext: '비밀번호 입력',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              LoginExtraButton(),
              SizedBox(height: 10),
              LoginButton(formKey: _formKey),
              SizedBox(height: 10),
              LoginToJoinButton()
            ],
          ),
        ),
      ],
    );
  }
}
