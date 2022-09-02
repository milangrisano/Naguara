import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Letters extends StatelessWidget {
  const Letters({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersBold extends StatelessWidget {
  const LettersBold({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class LettersBoldCenter extends StatelessWidget {
  const LettersBoldCenter({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class LettersCenter extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const LettersCenter({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersJustify extends StatelessWidget {
  const LettersJustify({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
class LettersJustifyOverflow extends StatelessWidget {
  const LettersJustifyOverflow({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
    this.numLine = 6,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final int numLine;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: numLine,
      textAlign: TextAlign.justify,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersUnderline extends StatelessWidget {
  const LettersUnderline({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
        decoration: TextDecoration.underline
      ),
    );
  }
}