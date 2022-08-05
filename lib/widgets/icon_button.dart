import 'package:flutter/material.dart';

class IconWidget2 extends StatelessWidget {
  final icon;
  const IconWidget2({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
