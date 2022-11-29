import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 17,
        color: Colors.white,
      ),
    );
  }
}
