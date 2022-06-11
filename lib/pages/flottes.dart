import 'package:flutter/material.dart';
import '../components/form.dart';

class Flottes extends StatefulWidget {
  @override
  State<Flottes> createState() => _FlottesState();
}

class _FlottesState extends State<Flottes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Color(0xFF5F3056),
        onPressed: (){
            showDialog(
            context: context,
            builder: (BuildContext context) {
            return FlotteForm();
        }
            );
        },
        child: Icon(Icons.add),
      ),
      appBar:AppBar(
        backgroundColor: Color(0xFF5F3056),
        title: Text("Flottes"),
      ) ,
      body: Column(
        children: [

          SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
          DataTable(
              columns: [
                DataColumn(
                  label: Text('Nom'),
                ),
                DataColumn(
                  label: Text('Véhicules'),
                ),
                DataColumn(
                  label: Text('Agents'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: [

                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('5644645')),
                  DataCell(Text('5644645')),
                  DataCell(
                    Container(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return FlotteForm();
                                }
                            );
                          },
                            padding: EdgeInsets.only(left: 0, right: 7),
                            icon: Icon(Icons.edit),color: Colors.blueGrey, splashRadius: 18, constraints: BoxConstraints(),),
                          IconButton(
                              onPressed: (){},
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.delete),color: Colors.red, splashRadius: 18, constraints: BoxConstraints()),
                        ],
                      )


                    )
                  ),
                ])
              ])))

          ],
      ),
    );
  }
}