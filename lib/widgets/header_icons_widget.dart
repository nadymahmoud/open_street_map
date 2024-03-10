import 'package:flutter/material.dart';

class HeaderIconswidget extends StatelessWidget {
  const HeaderIconswidget(
      {super.key, required this.colorContainer, required this.icon});
  final Color colorContainer;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: colorContainer, borderRadius: BorderRadius.circular(10)),
      child: IconButton(onPressed: () {}, icon: icon),
    );
  }
}
