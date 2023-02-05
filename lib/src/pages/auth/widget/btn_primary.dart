import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({Key? key, required this.text, this.handleTap})
      : super(key: key);

  final String text;
  final void Function()? handleTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: handleTap,
      splashColor: MyTheme.primary.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: MyTheme.primary.blue,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
