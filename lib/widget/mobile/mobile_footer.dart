import 'package:flutter/material.dart';
import 'package:google_search_clone/widget/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        FooterText(footerText: 'About'),
        SizedBox(width: 10),
        FooterText(footerText: 'Advertising'),
        SizedBox(width: 10),
        FooterText(footerText: 'Business'),
        SizedBox(width: 10),
        FooterText(footerText: 'How Search works'),
        FooterText(footerText: 'Privicy'),
        SizedBox(width: 10),
        FooterText(footerText: 'Terms'),
        SizedBox(width: 10),
        FooterText(footerText: 'Settings'),
      ],
    );
  }
}
