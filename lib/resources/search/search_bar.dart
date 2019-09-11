import 'package:flutter/material.dart';
import 'package:ux_navigation/resources/search/search_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: SearchField(),
        ),
      ),
    );
  }
}