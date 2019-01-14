import 'package:flutter/material.dart';
import 'routes/my_dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Color mainColor = const Color(0xFF1565C0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      home: MyDashboard(title: 'My Dashboard'),
    );
  }
}
