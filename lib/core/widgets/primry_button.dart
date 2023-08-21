import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimraryButton extends StatelessWidget {
  const PrimraryButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 380,
        height: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFAEDC81),
                Color(0xFF6CC51D),
              ],
            )),
        child: Container(
            alignment: AlignmentDirectional.center,
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}
