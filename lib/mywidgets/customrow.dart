import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildMyCustomRow extends StatelessWidget {
  const BuildMyCustomRow({this.width, this.title, this.onPressed});

  final double width;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              style: GoogleFonts.snippet(fontSize: width * 0.06),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
