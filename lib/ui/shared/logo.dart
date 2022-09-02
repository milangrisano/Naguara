import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String image;
  const Logo({
    Key? key,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 50,
      height: 50,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}