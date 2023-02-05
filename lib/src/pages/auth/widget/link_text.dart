import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    Key? key,
    required this.text,
    this.handleTap,
  }) : super(key: key);

  final String text;
  final void Function()? handleTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: handleTap,
        child: Text(
          text,
          style: MyTheme.text.blue.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
