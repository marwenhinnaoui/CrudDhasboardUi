
import 'package:dashboard/pages/agents.dart';
import 'package:dashboard/pages/flottes.dart';
import 'package:dashboard/pages/mission.dart';
import 'package:dashboard/pages/reclamation.dart';
import 'package:dashboard/pages/vehicle.dart';
import 'package:flutter/material.dart';

import 'pages/dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      routes: <String, WidgetBuilder>{
        "/flottes" : (BuildContext context)=> new Flottes(),
        "/reclamation" : (BuildContext context)=> new Reclamation(),
        "/mission" : (BuildContext context)=> new Mission(),
        "/agents" : (BuildContext context)=> new Agents(),
        "/vehicle" : (BuildContext context)=> new Vehicle(),
        //add more routes here
      },

      home: Dashboard(),
    );
  }
}

