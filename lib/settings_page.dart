import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_test/main.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Settings")),
        body: new ScopedModelDescendant<MainModel>(
            builder: (ctx, child, model) {
              return new Center(
                child: new Column(
                  children: <Widget>[
                    new Text("Theme: " + model?.brightness.toString())
                  ],
                ),
              );
            }
        )
    );
  }

}