import 'package:flutter/material.dart';
import 'package:scoped_test/settings_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Container(
          child: new RaisedButton(
              child: new Text("Open settings"),
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (ctx) => new SettingsPage()
                    )
                );
              })
      ),
    );
  }

}