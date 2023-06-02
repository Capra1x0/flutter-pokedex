import 'package:flutter/cupertino.dart';

class StatsText extends StatelessWidget {
  final String text;
  const StatsText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600
      ),
    );
  }
}