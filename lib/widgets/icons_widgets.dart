import 'package:flutter/material.dart';

class IconWidget1 extends StatelessWidget {
  final String emoticonFace;
  final String emoticonText;
  const IconWidget1(
      {Key? key, required this.emoticonFace, required this.emoticonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              emoticonFace,
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          emoticonText,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
