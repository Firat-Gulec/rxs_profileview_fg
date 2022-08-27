import 'package:flutter/material.dart';
import 'package:rxs_profileview_fg/profile_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileView());
  }
}
