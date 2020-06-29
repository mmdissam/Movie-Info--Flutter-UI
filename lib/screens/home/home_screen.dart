import 'package:flutter/material.dart';
import 'package:movieflutter/constants.dart';

import 'file:///C:/Users/NiMo-/AndroidStudioProjects/movie_flutter/lib/screens/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        ),
      ],
    );
  }
}
