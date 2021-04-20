import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function onPressed;
  LongButton({
    @required this.color,
    @required this.child,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: child,
        ),
      ),
    );
  }
}
