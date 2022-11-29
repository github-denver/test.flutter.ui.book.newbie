import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    // 인기 아이템은 전체 화면의 70%의 1/3만큼의 사이즈의 -5의 크기를 가집니다.
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        // 화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위해 최소 사이즈를 설정합니다.
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              SizedBox(height: gap_s),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          '깔끔하고 다 갖춰져있어서 좋았어요 :) 위치도 정말 좋아요 다들 여기 살고 싶다고 ㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는 것도 전혀 불편함이 없이 좋았어요 ^^ 이불도 포근하고 좋습니다. ㅎㅎㅎ',
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/p1.jpeg'),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text('데어', style: subtitle1()),
            Text('한국'),
          ],
        )
      ],
    );
  }
}
