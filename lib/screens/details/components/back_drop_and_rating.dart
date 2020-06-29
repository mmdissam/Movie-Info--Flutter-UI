import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movieflutter/models/movie.dart';

import '../../../constants.dart';

class BackDropAndRating extends StatelessWidget {
  final Size size;
  final Movie movie;

  const BackDropAndRating({Key key, this.size, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .4,
      child: Stack(
        children: <Widget>[
          _backdrop(context),
          _ratingPositioned(context),
          SafeArea(child: BackButton()),
        ],
      ),
    );
  }

  Widget _backdrop(BuildContext context) {
    return Container(
      height: size.height * 0.4 - 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(movie.backdrop),
        ),
      ),
    );
  }

  Widget _ratingPositioned(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        width: size.width * 0.9,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 50,
              color: Color(0XFF12153D).withOpacity(0.2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _ratingColumn(context),
            _rateThisColumn(context),
            _metaScoreColumn(context),
          ],
        ),
      ),
    );
  }

  Widget _ratingColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 30,
        ),
        SizedBox(height: kDefaultPadding / 4),
        _richTextRating(context),
        SizedBox(height: kDefaultPadding / 8),
        Text(
          "150.212",
          style: TextStyle(color: kTextLightColor),
        ),
      ],
    );
  }

  Widget _richTextRating(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -1),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: "${movie.rating}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(text: "/10"),
          ],
        ),
      ),
    );
  }

  Widget _rateThisColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: size.height * 0.008),
        IconButton(
          icon: Icon(
            Icons.star_border,
            color: Colors.black,
            size: 30,
          ),
          // TODO: SetState the rating Icon
          onPressed: () {},
        ),
        Transform.translate(
          offset: Offset(0, -5),
          child: Text(
            'Rate This',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _metaScoreColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: size.height * 0.01),
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Color(0XFF51CF66),
          ),
          child: Text(
            "${movie.metascoreRating}",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: kDefaultPadding / 4),
        Text(
          "Metascore",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: kDefaultPadding / 8),
        Text(
          "62 critic reviews",
          style: TextStyle(color: kTextLightColor),
        ),
      ],
    );
  }
}
