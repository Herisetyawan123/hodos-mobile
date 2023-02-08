import 'package:flutter/material.dart';

import '../../../../constants/theme.dart';

class FloatingBtn extends StatelessWidget {
  const FloatingBtn({
    Key? key,
    this.onPress,
  }) : super(key: key);

  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: MyTheme.primary.blue,
      onPressed: onPress,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
