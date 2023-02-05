import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({Key? key, required this.placeholder}) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: MyTheme.text.textSecondary,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        hintText: placeholder,
        hintStyle: MyTheme.text.textSecondary.copyWith(
          fontSize: 16,
        ),
      ),
    );
  }
}
