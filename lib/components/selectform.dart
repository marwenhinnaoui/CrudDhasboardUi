import 'package:flutter/material.dart';
class selectFormAgent extends StatefulWidget{
  @override
  State<selectFormAgent> createState() => _selectState();
}

class _selectState extends State<selectFormAgent> {
  String? _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: _dropDownValue == null
          ? Text('Dropdown')
          : Text(
        _dropDownValue!,
        style: TextStyle(color: Colors.blue),
      ),
      isExpanded: true,
      iconSize: 30.0,
      style: TextStyle(color: Colors.blue),
      items: ['One', 'Two', 'Three'].map(
            (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
              () {
            _dropDownValue = val as String?;
          },
        );
      },
    );
  }
}




class selectFormVehicle extends StatefulWidget{
  @override
  State<selectFormVehicle> createState() => _selectFormVehicleState();
}

class _selectFormVehicleState extends State<selectFormVehicle> {
  String? _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: _dropDownValue == null
          ? Text('Dropdown')
          : Text(
        _dropDownValue!,
        style: TextStyle(color: Colors.blue),
      ),
      isExpanded: true,
      iconSize: 30.0,
      style: TextStyle(color: Colors.blue),
      items: ['One', 'Two', 'Three'].map(
            (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
              () {
            _dropDownValue = val as String?;
          },
        );
      },
    );
  }
}
