import 'package:flutter/material.dart';

class BackgroundPattern extends StatelessWidget {
  const BackgroundPattern({Key? key, this.path}) : super(key: key);
  final String? path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        path ?? 'assets/images/pattern.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
