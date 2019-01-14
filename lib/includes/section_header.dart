import 'package:flutter/material.dart';

Widget sectionHeader(String headerText, String headerAction){
  
  Color viewAllColor = Color(0xFF1565C0);
  
  return Container(
    padding: const EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          headerText,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        FlatButton(
          padding: EdgeInsets.all(8.0),
          child: Text(
            headerAction,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: viewAllColor
            ),
          ),
          onPressed: (){},
        ),
      ],
    ),
  );
}