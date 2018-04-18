import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_test/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ScopedModel<MainModel>(
        model: new MainModel(),
        child: new ScopedModelDescendant<MainModel>(
            builder: (ctx, child, model) =>
            new MaterialApp(
              title: 'Flutter Demo',
              theme: new ThemeData(
                  primarySwatch: Colors.blue,
                  brightness: model.brightness
              ),
              home: new MyHomePage(title: 'Flutter Demo Home Page'),
            )
        )
    );
  }
}

class MainModel extends Model {
  Brightness _brightness = Brightness.dark;


  Brightness get brightness => _brightness;

  void updateTheme(Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }

}