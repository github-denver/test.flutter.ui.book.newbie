import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$699",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          // Spacer()로 Icon 위젯과 Text 위젯을 양 끝으로 벌릴 수 있습니다. spaceBetween과 동일합니다.
          Spacer(),
          Text('review'),
          Text('(26)', style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Color Options'),
          SizedBox(height: 10),
          Row(
            children: [
              _buildDetailIcon(Colors.red),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.blue),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: ClipOval(
              child: Container(
                width: 40,
                height: 40,
                color: mColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          minimumSize: Size(300, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: kAccentColor,
        ),
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: Text('장바구니에 담으시겠습니까?'),
              actions: [
                CupertinoDialogAction(
                  child: Text('확인'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
