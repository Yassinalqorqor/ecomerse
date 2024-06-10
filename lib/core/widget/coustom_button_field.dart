import 'package:flutter/material.dart';

class coustombuttonfield extends StatelessWidget {
  const coustombuttonfield({super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.style});

final Widget icon;
  final Widget label;
  final ButtonStyle? style;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      label: label,
      style: style,
      onPressed:(){ onPressed;},

    );
  }
}
