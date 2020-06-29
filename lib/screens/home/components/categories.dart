import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieflutter/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(context, index)),
    );
  }

  Padding buildCategory(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _categories(context, index),
            _decorationOfUnderLine(context, index),
          ],
        ),
      ),
    );
  }

  Text _categories(BuildContext context, int index) {
    return Text(
      categories[index],
      style: Theme.of(context).textTheme.headline5.copyWith(
            fontWeight: FontWeight.w600,
            color: index == _selectCategory
                ? kTextColor
                : Colors.black.withOpacity(0.4),
          ),
    );
  }

  Widget _decorationOfUnderLine(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 6,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: index == _selectCategory ? kSecondaryColor : Colors.transparent,
      ),
    );
  }
}
