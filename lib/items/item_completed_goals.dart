import 'package:flutter/material.dart';
import 'package:flutter_lagos_second/includes/includes.dart';
import 'package:flutter_lagos_second/data/data.dart';


Widget itemCompletedGoals(Goal goal) {
  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 2.0,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            width: 60,
            height: 60,
            child: Image.asset(
              '${goal.image}',
              fit: BoxFit.cover,
            ),
            margin: EdgeInsets.all(10.0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${goal.goalName}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  IconText(
                    icon: Icons.access_time,
                    textDescription: "${goal.time} mins",
                  ),
                  IconText(
                    icon: Icons.flag,
                    textDescription: "${goal.calories} Kcal",
                  ),
                  IconText(
                    icon: Icons.date_range,
                    textDescription: "${goal.date}",
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
