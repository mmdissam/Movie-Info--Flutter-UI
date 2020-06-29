import 'package:flutter/material.dart';
import 'package:movieflutter/models/movie.dart';
import 'package:movieflutter/screens/details/details_screen.dart';

import '../../../constants.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      // TODO: Add OpenContainer Instead InkWell
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(movie: movie),
          ),
        ),
        child: Column(
          children: <Widget>[
            _movieCover(context),
            _movieTitle(context),
            _ratingRow(context),
          ],
        ),
      ),
    );
  }

  Widget _movieCover(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [kDefaultShadow],
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(movie.poster),
          ),
        ),
      ),
    );
  }

  Widget _movieTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Text(
        movie.title,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget _ratingRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 5),
        Text(movie.rating.toString(),
            style: Theme.of(context).textTheme.bodyText2),
      ],
    );
  }
}
