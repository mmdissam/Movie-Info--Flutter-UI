import 'package:flutter/material.dart';

import '../../../constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(cast['image']),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  cast['originalName'],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                  maxLines: 2,
                ),
                Transform.translate(
                  offset: Offset(0, -5),
                  child: Text(
                    cast['movieName'],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
