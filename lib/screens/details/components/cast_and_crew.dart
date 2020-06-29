import 'package:flutter/material.dart';
import 'package:movieflutter/constants.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;

  const CastAndCrew({Key key, this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding / 2),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: casts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CastCard(
                cast: casts[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
