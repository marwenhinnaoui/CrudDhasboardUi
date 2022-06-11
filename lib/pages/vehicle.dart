import 'package:badges/badges.dart';
import 'package:dashboard/components/form.dart';
import 'package:flutter/material.dart';

class Vehicle extends StatefulWidget{
  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  var options = [
      'Model',
      'N immatriculation',
      'Réservoir(L)',
      'Classification',
      'Flotte',
      'Kilométrage',
      'Dispositif GPS',

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Color(0xFF5F3056),
        onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return VehicleForm();
              }
          );
        },
        child: Icon(Icons.add),
      ),
      appBar:AppBar(
        backgroundColor: Color(0xFF5F3056),
        title: Text("Vehicles"),
      ) ,
      body:
        GridView.count(
          crossAxisCount: 1,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 14.0,
          children: <Widget>[
              Card(
                clipBehavior: Clip.antiAlias,
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          toAnimate: false,
                          shape: BadgeShape.square,
                          badgeColor: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                          badgeContent: Text('DZ-01-01', style: TextStyle(fontSize:30,color: Colors.white)),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: options.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(options[index]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text('data'),
                                    ),
                                  ],
                                ),
                                Divider(),

                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
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
                        ),
                      ),
                    ],
                  ),
                ),


          ],
        ),
    );
  }
}