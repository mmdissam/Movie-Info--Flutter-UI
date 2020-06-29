import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movieflutter/constants.dart';
import 'package:movieflutter/models/movie.dart';
import 'package:movieflutter/screens/details/components/back_drop_and_rating.dart';
import 'package:movieflutter/screens/details/components/genres.dart';
import 'package:movieflutter/screens/details/components/title_duration_and_fav_btn.dart';

import 'cast_and_crew.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackDropAndRating(movie: movie, size: _size),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFavBtn(movie: movie),
          Genres(movie: movie),
          _titlePlotSummary(context),
          _bodyPlotSummary(context),
          SizedBox(height: kDefaultPadding),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }

  Widget _titlePlotSummary(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Text(
        "Plot Summary",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget _bodyPlotSummary(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        "${movie.plot}",
        style: TextStyle(color: Color(0XFF737599), wordSpacing: 1.2),
      ),
    );
  }
}
