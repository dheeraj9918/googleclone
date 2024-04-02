import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';

import 'package:google_search_clone/widget/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(footerText: 'About'),
                SizedBox(width: 10),
                FooterText(footerText: 'Advertising'),
                SizedBox(width: 10),
                FooterText(footerText: 'Business'),
                SizedBox(width: 10),
                FooterText(footerText: 'How Search works'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(footerText: 'Privicy'),
                SizedBox(width: 10),
                FooterText(footerText: 'Terms'),
                SizedBox(width: 10),
                FooterText(footerText: 'Settings'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
