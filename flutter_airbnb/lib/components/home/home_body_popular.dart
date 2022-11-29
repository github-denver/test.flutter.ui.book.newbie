import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          '한국 숙소에 직접 다녀간 게스트의 후기',
          style: h5(),
        ),
        Text(
          '게스트 후기 2,500,000개 이상, 평균평점 4.7점(5점 만점)',
          style: body1(),
        )
      ],
    );
  }

  Widget _buildPopularList() {
    /*
    * 전체 화면 사이즈를 1000이라고 가정했을 때 _buildPopularList의 넓이가 70%일 경우 700입니다.
    * HomeBodyPopularItem의 넓이는 700의 1/3인 233.33 - 5의 결괏값은 228.33입니다.
    * 228.33의 인기 아이템이 3개가 배치되면 684.99크기이고 남은 크기는 15.01이 남습니다.
    * 그래서 HomeBodyPopularItem 위젯 사이사이에 SizedBox를 7.5로 줄 수 있습니다.
    * */
    return Wrap(
      children: [
        // id는 사진을 선택하기 위해 필요합니다.
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
