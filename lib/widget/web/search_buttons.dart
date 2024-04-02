import 'package:flutter/material.dart';
import 'package:google_search_clone/widget/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  // const SearchButtons({super.key});
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(buttonText: 'Google Search'),
            SizedBox(
              width: 20,
            ),
            SearchButton(buttonText: 'I\'m Feeling Lucky'),
          ],
        )
      ],
    );
  }
}
