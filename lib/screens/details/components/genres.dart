import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieflutter/constants.dart';
import 'package:movieflutter/models/movie.dart';
import 'package:movieflutter/screens/home/components/genre_card.dart';

class Genres extends StatelessWidget {
  final Movie movie;

  const Genres({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenreCard(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
