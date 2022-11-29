import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: small_gap,
        ),
        TextFormField(
          // 1. !는 null이 절대 아니다라고 컴파일러에게 알려주는 것
          validator: (value) =>
              value!.isEmpty ? 'Please enter some text' : null,
          obscureText: text == 'Password' ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            // 기본 디자인
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // 손가락 터치 시 디자인
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // 에러 발생 시 디자인
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // 에러 발생 후 손가락 터치 시 디자인
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
