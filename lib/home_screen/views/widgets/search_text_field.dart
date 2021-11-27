import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(UIconstants.regularPadding),
      child: TextField(
        style: TextStyle(fontSize: 15),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: 'Search',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          filled: true,
          hoverColor: Colors.transparent,
          fillColor: Colors.transparent,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          isDense: true,
        ),
      ),
    );
  }
}
