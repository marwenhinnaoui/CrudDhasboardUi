
import 'dart:ui';
import 'package:dashboard/components/radioform.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:dashboard/components/form.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class Agents extends StatefulWidget{
  @override
  State<Agents> createState() => _AgentsState();
}

class _AgentsState extends State<Agents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Color(0xFF5F3056),
        onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AgentForm();
              }
          );
        },
        child: Icon(Icons.add),
      ),
      appBar:AppBar(
        backgroundColor: Color(0xFF5F3056),
        title: Text("Agents"),
      ) ,
      body: GridView.count(
            crossAxisCount: 1,
            padding: const EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,

            children: <Widget>[
              Card(
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                  },

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: CircleAvatar(
                                radius: 50,
                                child: ClipOval(
                                  child: Image.asset("assets/profile.png"),
                                )// Image radius

                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Badge(
                              toAnimate: false,
                              shape: BadgeShape.square,
                              badgeColor: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                              badgeContent: Text('Chauffeur', style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(height: 7.0),
                            Text('Walid Jaloul' , style: TextStyle(fontSize: 19),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.phone),
                                Text('99999999999999' , style: TextStyle(fontSize: 19),),

                              ],
                            ),
                            Text('Service' , style: TextStyle(fontSize: 19),),
                            const SizedBox(height: 5.0),

                            Badge(
                              toAnimate: false,
                              padding: EdgeInsets.all(7),
                              shape: BadgeShape.square,
                              badgeColor: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                              badgeContent: Text('B', style: TextStyle(color: Colors.white)),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: (){
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AgentForm();
                                        }
                                    );
                                  },
                                  padding: EdgeInsets.only(left: 0, right: 7),
                                  icon: Icon(Icons.edit),color: Colors.blueGrey, splashRadius: 18, constraints: BoxConstraints(),),
                                IconButton(onPressed: (){
                                },
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.delete),color: Colors.red, splashRadius: 18, constraints: BoxConstraints()),
                              ],
                            )


                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),


    );
  }
}