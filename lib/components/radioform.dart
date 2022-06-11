import 'package:flutter/material.dart';
class agentRadioForm extends StatefulWidget{
  @override
  State<agentRadioForm> createState() => _agentRadioFormState();
}

class _agentRadioFormState extends State<agentRadioForm> {
  int? value = 0;
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Radio(
                    value: 1, groupValue: value, onChanged: ( index) {
                      setState(() {
                        value =index as int?;
                      });
                }),
                Expanded(
                  child: Text('Chauffeur'),
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: [
                Radio(
                    value: 2, groupValue: value, onChanged: (index) {
                  setState(() {
                    value =index as int?;
                  });
                }),
                Expanded(child: Text('Opérateur'))
              ],
            ),
            flex: 1,
          ),

          ]),
        ],
      );
  }
}