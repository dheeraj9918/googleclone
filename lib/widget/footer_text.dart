import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String footerText;
  const FooterText({
    super.key,
    required this.footerText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        footerText,
        style: const TextStyle(
          color: Colors.white38,
        ),
      ),
    );
  }
}
