import 'package:dashboard/pages/flottes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flottes.dart';

class Dashboard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF5F3056),
          title: Text('Administration'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications), splashRadius: 19,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: CircleAvatar(
                child: InkWell(
                  borderRadius: BorderRadius.circular(50) ,
                onTap: () {
                print("tapped");
                },
                radius: 50,
                child: ClipOval(
                  child: Image.asset("assets/profile.png"),
                )// Image radius
              ),
            ),
            ),
          ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,

          children: <Widget>[
            Card(
            clipBehavior: Clip.antiAlias,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/flottes");
                    },

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18.0 / 11.0,
                    child: Image.asset('assets/workshop.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 8.0),
                        Text('Flottes' , style: TextStyle(fontSize: 30),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
                child:  InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/agents");

                },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18.0 / 11.0,
                    child: Image.asset('assets/broker.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 8.0),
                        Text('Agents' , style: TextStyle(fontSize: 30),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/vehicle");
                },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18.0 / 11.0,
                    child: Image.asset('assets/car.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 8.0),
                        Text('Véhicules' , style: TextStyle(fontSize: 30),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child:  InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/mission");

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/mission.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 8.0),
                            Text('Mission' , style: TextStyle(fontSize: 30),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/reclamation");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/problem.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 8.0),
                          Text('Reclamation' , style: TextStyle(fontSize: 28),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }
}