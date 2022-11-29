import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }
}

Widget _buildFollowButton() {
  return InkWell(
    onTap: () {
      print("Follow 버튼 클릭");
    },
    child: Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      child: Text(
        "Follow",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
    ),
  );
}

Widget _buildMessageButton() {
  return InkWell(
    onTap: () {
      print("Message 버튼 클릭");
    },
    child: Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      child: Text(
        "Message",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    ),
  );
}
