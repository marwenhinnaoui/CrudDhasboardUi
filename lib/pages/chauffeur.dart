import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Chauffeur extends StatefulWidget{
  @override
  State<Chauffeur> createState() => _ChauffeurState();
}

class _ChauffeurState extends State<Chauffeur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        icon: Icon(Icons.view_list), onPressed: () {
        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(30),
                          topRight: const Radius.circular(30))
                  ),
                  height: MediaQuery.of(context).size.height-100.0,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),

                                child: Text('07/12 00:24', style: TextStyle(fontSize: 17)),
                              ),
                              Ink(
                                width: 30,
                                height: 30,

                                decoration:
                                const ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Color(0xffA2A2A2FF)
                                ),
                                child: IconButton(
                                  splashRadius: 17,

                                  icon: const Icon(Icons.close),
                                  iconSize: 14,
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),


                            ],

                          ),
                        ),
                        Column(
                          children: [
                            Card(
                            clipBehavior: Clip.antiAlias,

                              color: Color(0xFFF1F3FF),
                              child:  InkWell(
                                onTap: () {
                                    showModalBottomSheet<void>(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Expanded(
                                          child: Container(
                                            height: MediaQuery.of(context).size.height-100.0,

                                            child: Column(
                                              children: [
                                              ],
                                            ),
                                          )
                                      );
                                    }
                                    );

                                },
                              child: ClipPath(
                                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),

                                child: Container(

                                  decoration: BoxDecoration(
                                      border: Border(left: BorderSide(color: Colors.green, width: 5))
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right:19.0),
                                              child: Icon(Icons.arrow_downward),
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  children: [Icon(Icons.timer), Text(' 2 heures', style: TextStyle(fontSize: 15),)],
                                                ),Row(
                                                  children: [Icon(Icons.location_on), Text(' 95 km', style: TextStyle(fontSize: 15))],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Icon(Icons.arrow_forward_rounded)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ),
                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                // child :Divider()
                                child: Text('07/12 00:24', style: TextStyle(fontSize: 17)),
                              ),

                            ],

                          ),
                        ),

                        Column(
                          children: [
                            Card(
                              color: Color(0xFFF1F3FF),

                              clipBehavior: Clip.antiAlias,
                                child:InkWell(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Expanded(
                                            child: Container(
                                              height: MediaQuery.of(context).size.height-90,

                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Icon(Icons.location_on_outlined),
                                                            ),
                                                            Text('الطريق الجهوية 118، ولاية مدنين', style:TextStyle(fontSize: 17)),
                                                          ],
                                                        ),
                                                        Ink(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                          const ShapeDecoration(
                                                            shape: CircleBorder(),
                                                            color: Color(0xffA2A2A2FF)
                                                          ),
                                                          child: IconButton(
                                                            splashRadius: 15,
                                                            icon: const Icon(Icons.close),
                                                            iconSize: 14,
                                                            color: Colors.white,
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            },
                                                          ),
                                                        )

                                                        // IconButton(onPressed: (){;}, icon: Icon(Icons.close))
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(),

                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Icon(Icons.account_circle_outlined),
                                                        ),
                                                        Text('Chauffeur', style:TextStyle(fontSize: 17)),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(),

                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Icon(Icons.call),

                                                        ),
                                                        Text('_ _', style:TextStyle(fontSize: 17)),

                                                      ],
                                                    ),
                                                  ),
                                                  Divider(),
                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child:Icon(Icons.history)

                                                        ),
                                                        Text('MAJ: 17 juin 2022 15:50', style:TextStyle(fontSize: 17)),

                                                      ],
                                                    ),
                                                  ),
                                                  Divider(),
                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children:[

                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Icon(Icons.alt_route),
                                                        ),
                                                        Text("Trajets", style:TextStyle(fontSize: 17)),
                                                          ]

                                                        ),
                                                        Icon(Icons.keyboard_arrow_right)
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30),

                                                              child: Column(
                                                                children: [
                                                                  Text("Kilometrage", style:TextStyle(fontSize: 13, color: Colors.grey)),
                                                                  Text("35555 km", style:TextStyle(fontSize: 24)),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30),

                                                              child: Column(
                                                                children: [
                                                                  Text("Niveau Batrie", style:TextStyle(fontSize: 13, color: Colors.grey)),
                                                                  Text("4.2V", style:TextStyle(fontSize: 24)),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(),
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30),

                                                              child: Column(
                                                                children: [
                                                                  Text("Kilometrage", style:TextStyle(fontSize: 13, color: Colors.grey)),
                                                                  Text("35555 km", style:TextStyle(fontSize: 24)),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30),

                                                              child: Column(
                                                                children: [
                                                                  Text("Niveau Batrie", style:TextStyle(fontSize: 13, color: Colors.grey)),
                                                                  Text("4.2V", style:TextStyle(fontSize: 24)),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(),
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30),
                                                              child: Column(
                                                                children: [
                                                                  Text("Kilometrage", style:TextStyle(fontSize: 13, color: Colors.grey)),
                                                                  Text("35555 km", style:TextStyle(fontSize: 24)),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30),
                                                              child: Column(
                                                                children: [
                                                                  Text("Niveau Batrie", style:TextStyle(fontSize: 13, color: Colors.grey)),
                                                                  Text("4.2V", style:TextStyle(fontSize: 24)),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                        );
                                      }
                                  );
                                },
                              child: ClipPath(
                                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),

                                child: Container(

                                  decoration: BoxDecoration(
                                      border: Border(left: BorderSide(color: Colors.red, width: 5))
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),

                                      child:Row(

                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(

                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right:19.0),
                                              child: Text('P', style: TextStyle(fontWeight:
                                                  FontWeight.bold, fontSize: 19),),
                                            ),

                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text('الطريق الجهوية 118، ولاية مدنين', style: TextStyle(fontSize: 15)),
                                                Text('Durée: 4 heures', style: TextStyle(fontSize: 15)),
                                                Text('Ralenti: 0 heures', style: TextStyle(fontSize: 15)),

                                              ],
                                            ),

                                          ],
                                        ),
                                            Icon(Icons.assistant_direction_sharp)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
      },
      ),
      appBar: AppBar(

      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}