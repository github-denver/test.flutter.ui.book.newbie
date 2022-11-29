import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        // -1.0부터 1.0까지 가로 범위에서 0.1.의 값은 5%입니다.
        alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          '모두의 숙소에서 숙소를 검색하세요.',
          style: h4(),
        ),
        SizedBox(
          height: gap_xs,
        ),
        Text(
          '혼자 하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 \'공간 전체\' 숙소까지, 모두의 숙소에 다 있습니다.',
          style: body1(),
        ),
        SizedBox(height: gap_m)
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(
          prefixText: '위치',
          hintText: '근처 추천 장소',
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(
                prefixText: '체크인',
                hintText: '날짜 입력',
              ),
            ),
            SizedBox(width: gap_s),
            Expanded(
              child: CommonFormField(
                prefixText: '체크아웃',
                hintText: '날짜 입력',
              ),
            ),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(
                prefixText: '성인',
                hintText: '숫자 입력',
              ),
            ),
            SizedBox(width: gap_s),
            Expanded(
              child: CommonFormField(
                prefixText: '어린이',
                hintText: '숫자 입력',
              ),
            ),
          ],
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          print('클릭');
        },
        child: Text(
          '검색',
          style: subtitle1(mColor: Colors.white),
        ),
      ),
    );
  }
}
