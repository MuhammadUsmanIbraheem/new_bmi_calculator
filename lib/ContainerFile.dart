import 'package:flutter/material.dart';

class RepeatContainercode extends StatelessWidget {
  RepeatContainercode({@required this.colors, this.cardWidget, this.onPressed});
  final Color colors;
  final Widget cardWidget;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardWidget,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
