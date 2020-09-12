import 'package:flutter/material.dart';
import 'package:gpp/screens/customized.dart';

import 'formal.dart';
import 'informal.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 70.0,bottom:90.0,left: 60.0 ),
            color: Theme.of(context).primaryColor,
            child: Text("Welcome to Get Letter",),
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text("Formal Letter",
              style: TextStyle(fontSize: 16),),
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(builder:
                  (BuildContext context) => new Formal()));
            },
          ),
          ListTile(
            leading: Icon(Icons.note_add_outlined),
            title: Text("Unformal Letter",
              style: TextStyle(fontSize: 16),),
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(builder:
                  (BuildContext context) => new informal()));
            },
          ),
          ListTile(
            leading: Icon(Icons.note_add_rounded),
            title: Text("Customized Letter",
              style: TextStyle(fontSize: 16),),
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(builder:
                  (BuildContext context) => new Customized()));
            },
          ),
        ],
      ),
    );
  }
}
