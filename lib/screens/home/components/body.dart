import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieflutter/constants.dart';

import 'file:///C:/Users/NiMo-/AndroidStudioProjects/movie_flutter/lib/screens/home/components/categories.dart';
import 'file:///C:/Users/NiMo-/AndroidStudioProjects/movie_flutter/lib/screens/home/components/genres.dart';

import 'movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
          SizedBox(height: MediaQuery.of(context).size.height / 8),
        ],
      ),
    );
  }
}
