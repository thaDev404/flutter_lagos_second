import 'package:flutter/material.dart';
import 'package:flutter_lagos_second/data/data_challenges.dart';
import 'package:flutter_lagos_second/includes/includes.dart';


Widget itemRecentChallenges(Challenge challenge) {

  Color mainColor = const Color(0xff1E88E5);

  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 2.0,
      color: Colors.white,
      child: SizedBox(
        width: 230,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0)
                ),
                child: Image.asset(
                    '${challenge.image}'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text("${challenge.challengeName}",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconText(
                    icon: Icons.people,
                    textDescription: "${challenge.players}",
                  ),
                  IconText(
                    icon: Icons.monetization_on,
                    textDescription: "${challenge.potSize}",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
  );
}
