import 'package:flutter/material.dart';

import '../resources/manager_colors.dart';

TextField PrimraryText({
   required String? text,
  required Icon icon
}) {

  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ManagerColors.grayLight,
          width: 1,
        ),
      ),
      hintText: text,
      prefixIcon: icon,
    ),
  );
}
