import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieflutter/constants.dart';

import 'genre_card.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> _genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation",
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _genres.length,
        itemBuilder: (context, index) => GenreCard(
          genre: _genres[index],
        ),
      ),
    );
  }
}
