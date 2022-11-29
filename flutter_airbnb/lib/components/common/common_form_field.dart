import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;

  // required 키워드는 선택적 매개변수 {}안에서 꼭 받아야 하는 값을 설정할 수 있습니다.
  const CommonFormField({required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        ),
        TextFormField(
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              top: 0,
              right: 0,
              bottom: 0,
              left: 0,
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
