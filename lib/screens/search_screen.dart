import 'package:flutter/material.dart';

import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/services/api_services.dart';
import 'package:google_search_clone/widget/search_footer.dart';
import 'package:google_search_clone/widget/search_header.dart';
import 'package:google_search_clone/widget/search_result_component.dart';
import 'package:google_search_clone/widget/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuary;
  final String start;
  const SearchScreen({
    super.key,
    required this.searchQuary,
    required this.start,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Title(
        color: blueColor,
        title: searchQuary,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //searchHeader
                const SearchHeader(),
                //tab for news image
                Padding(
                  padding: EdgeInsets.only(left: size.width <= 1080 ? 10 : 165),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SearchTabs(),
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: .5,
                ),
                //search result
                FutureBuilder(
                  future: ApiService()
                      .fetchData(queryTerm: searchQuary, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: size.width <= 1080 ? 10 : 165, top: 12),
                            child: Text(
                              'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xFF70757a),
                              ),
                            ),
                          ),
                          ListView.builder(
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final item = snapshot.data?['items'][index];

                              return Padding(
                                padding: EdgeInsets.only(
                                    left: size.width <= 1080 ? 10 : 165,
                                    top: 10),
                                child: SearchResultComponent(
                                  link: item['link'],
                                  text: item['title'],
                                  linkToGo: item['formattedUrl'],
                                  disc: item['snippet'],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (start != "0") {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => SearchScreen(
                                            searchQuary: searchQuary,
                                            start: (int.parse(start) - 10)
                                                .toString(),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    '<Prev ',
                                    style: TextStyle(
                                      color: blueColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          searchQuary: searchQuary,
                                          start: (int.parse(start) + 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Next>',
                                    style: TextStyle(
                                      color: blueColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SearchFooter(),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                //pagination button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
