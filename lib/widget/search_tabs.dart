import 'package:flutter/material.dart';
import 'package:google_search_clone/widget/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SearchTab(
            isActive: true,
            icon: Icons.all_inbox,
            text: 'All',
          ),
          SizedBox(width: size.width <= 768 ? 5 : 10),
          const SearchTab(
            icon: Icons.image,
            text: 'Images',
          ),
          SizedBox(width: size.width <= 768 ? 5 : 10),
          const SearchTab(
            icon: Icons.article,
            text: 'News',
          ),
          SizedBox(width: size.width <= 768 ? 5 : 10),
          const SearchTab(
            icon: Icons.map,
            text: 'Maps',
          ),
          SizedBox(width: size.width <= 768 ? 5 : 10),
          const SearchTab(
            icon: Icons.shop,
            text: 'Shopping',
          ),
          SizedBox(width: size.width <= 768 ? 5 : 10),
          const SearchTab(
            icon: Icons.more_vert,
            text: 'More',
          ),
        ],
      ),
    );
  }
}
