import 'package:flutter/material.dart';

Widget personsCard(){
  return Card(
    elevation: 3.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ///First Text Container [TodaysGoal]
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text("TODAY'S GOAL"),
          ),
          ///Second Item
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "1,200",
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "KCAL",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Calories",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "90",
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "M",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Cardio",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          ///The Button
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 16.0),
            width: 340,
            height: 45,
            child: RaisedButton(
              color: Colors.white70,
              child: Text(
                "START CHALLENGE",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              elevation: .9,
              onPressed: () {},
            ),
          )
        ],
      ),
    ),
  );
}