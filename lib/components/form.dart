import 'package:dashboard/components/radioform.dart';
import 'package:dashboard/components/selectform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlotteForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
        scrollable: true,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Send'),
          ),
        ],
        title: Text('Ajouter flotte'),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Véhicules',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Agents',
                ),
              ),
            ],
          ),
        ),
        ),
      );
  }

}
class VehicleForm extends StatelessWidget {@override
  Widget build(BuildContext context) {
    return
      AlertDialog(
          scrollable: true,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Send'),
            ),
          ],
          title: Text('Ajouter vehicule'),
          content: Padding(
          padding: const EdgeInsets.all(8.0),
      child:
      Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Modél',
                ),
              ),              TextFormField(
                decoration: InputDecoration(
                  labelText: 'N immatriculation',
                ),
              ),TextFormField(
                decoration: InputDecoration(
                  labelText: 'Volume de réservoir'
                ),
              ),TextFormField(
                decoration: InputDecoration(
                  labelText: 'Classification'
                ),
              ),
              selectFormVehicle(),
              selectFormVehicle(),
            ],
          ),
        ),
          ),
      );
  }

}
class AgentForm extends StatefulWidget{
  @override
  State<AgentForm> createState() => _AgentModalState();
}

class _AgentModalState extends State<AgentForm> {
int? val = 0;

  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
          scrollable: true,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Send'),
            ),
          ],
          title:              Text('Ajouter un chauffeur'),
          content: Padding(
          padding: const EdgeInsets.all(8.0),
    child:
         Form(
          child: Column(
            children: <Widget>[

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prénom',
                ),
              ), TextFormField(
                decoration: InputDecoration(
                  labelText: 'Npm',
                ),
              ), TextFormField(
                decoration: InputDecoration(
                  labelText: 'Télephone',
                ),
              ),
              selectFormAgent(),
              selectFormAgent(),
              agentRadioForm(),


            ],
          ),
    ),
          ),
        );
  }
}

