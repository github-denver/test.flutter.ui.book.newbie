import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      endDrawer: ProfileDrawer(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          // 남아있는 세로 공간을 모두 사용하기 위해 Expanded를 사용합니다.
          Expanded(child: ProfileTab())
        ],
      ),
    );
  }
}

AppBar _buildProfileAppBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios),
    title: Text("Profile"),
    centerTitle: true,
  );
}
