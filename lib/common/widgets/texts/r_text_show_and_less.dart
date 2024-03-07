import 'package:flutter/material.dart';
class RTextShowAndLese extends StatelessWidget {
  const RTextShowAndLese({
    super.key, required this.text, required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(

              onTap: onTap,
              child: Text(text)),
        ));
  }
}
