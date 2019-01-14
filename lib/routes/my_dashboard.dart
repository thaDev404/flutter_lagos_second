import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:flutter_lagos_second/data/data.dart';
import 'package:flutter_lagos_second/includes/includes.dart';
import 'package:flutter_lagos_second/items/items.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class MyDashboard extends StatefulWidget {
  MyDashboard({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

  List<Challenge> _challenge = challenges;
  List<Goal> _goal = goals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Text(
              widget.title
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                  Icons.clear_all,
                  color: Colors.white
              ),
            )
          ]
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 180,
            decoration: new BoxDecoration(
              color: Color(0xFF1565C0),
                borderRadius: new BorderRadius.only(
                    bottomLeft:  const  Radius.circular(30.0),
                    bottomRight: const  Radius.circular(120.0))
            ),
          ),

          /*new Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              top: 0.0,
              child: new CustomPaint(
                painter: new Sky(),
              ),
          ),*/
          ListView(
              children: <Widget>[
                personsCard(),
                Container(
                  padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                    child: sectionHeader("RECENT CHALLENGES", "VIEW ALL")),
                SizedBox(
                  height: 185,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: _challenge.map(itemRecentChallenges).toList()
                  ),
                ),
                sectionHeader("COMPLETED GOALS", "VIEW ALL"),
                Container(
                  height:180.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                    child: ListView(
                      children: _goal.map(itemCompletedGoals).toList(),
                    ),
                  ),
                )
              ],
            ),

        ],
      ),
      bottomNavigationBar: PlatformNavBar(
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: PlatformWidget(
              ios: (_) => Icon(
                CupertinoIcons.book,
              ),
              android: (_) => Icon(Icons.book),
            ),
          ),

          BottomNavigationBarItem(
            title: Text(''),
            icon: PlatformWidget(
              ios: (_) => Icon(
                CupertinoIcons.search,
              ),
              android: (_) => Icon(Icons.search),
            ),
          ),

          BottomNavigationBarItem(
            title: Text(''),
            icon: PlatformWidget(
              ios: (_) => Icon(
                CupertinoIcons.mic_solid,
              ),
              android: (_) => Icon(Icons.mic),
            ),
          ),

          BottomNavigationBarItem(
            title: Text(''),
            icon: PlatformWidget(
              ios: (_) => Icon(
                CupertinoIcons.person,
              ),
              android: (_) => Icon(Icons.person),
            ),
          ),
        ],
        android: (_) => MaterialNavBarData(
          backgroundColor: Colors.lightBlue,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

///ALso check [Docs] for [PaintingContext]

class Sky extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      new Rect.fromLTRB(
          0.0, 0.0, 1000.0, 150.0
      ),
      new Paint()..color = new Color(0xFF1565C0),
    );
  }

  @override
  bool shouldRepaint(Sky oldDelegate) {
    return true;
  }
}