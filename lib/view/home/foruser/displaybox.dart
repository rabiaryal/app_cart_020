import 'package:flutter/material.dart';

class DisplayBox extends StatelessWidget {
  const DisplayBox({required this.boxColor, super.key});

  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color:boxColor,
    );
  }
}
