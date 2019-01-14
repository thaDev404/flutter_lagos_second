import 'package:flutter/material.dart';

class IconText extends StatelessWidget{
  final icon;
  final textDescription;

  IconText({
    @required this.icon,
    @required this.textDescription
  }): super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 18.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
            child: Icon(
              icon,
              color: Colors.grey,
              size: 15,
            ),
          ),
          Text(textDescription)
        ],
      ),
    );
  }
}
