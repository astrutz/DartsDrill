import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final IconData icon;

  MenuButton({@required this.buttonText, this.onPressed, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Padding(
          padding: const EdgeInsets.only(
            left: 28,
            top: 16,
            right: 0,
            bottom: 16,
          ),
          child: Text(
            buttonText,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Color(0xFFFFFFFF),
                ),
          ),
        ),
        icon: Icon(icon, size: 25),
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
