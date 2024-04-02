import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';

class SearchButton extends StatelessWidget {
  final String buttonText;
  const SearchButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: () {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      child: Text(buttonText),
    );
  }
}
