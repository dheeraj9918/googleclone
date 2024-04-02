import 'package:flutter/material.dart';

class ResposniveLayoutScreen extends StatelessWidget {
  final Widget mobileSrceenLayout;
  final Widget webScreenLayout;
  const ResposniveLayoutScreen({
    super.key,
    required this.mobileSrceenLayout,
    required this.webScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 768) {
          return mobileSrceenLayout;
        }
        return webScreenLayout;
      },
    );
  }
}
