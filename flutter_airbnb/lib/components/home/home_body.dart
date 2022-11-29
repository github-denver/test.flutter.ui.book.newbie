import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_banner.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);

    // SizedBox 위젯을 가운데 정렬하기 위해서 Align을 사용합니다. Center 위젯도 가능합니다.
    return Align(
      child: SizedBox(
        width: bodyWidth, // 화면의 70%만 차지하기 위해서 사용합니다.
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
