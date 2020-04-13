import 'package:flutter/material.dart';
import 'package:fourpiconeword/pages/home.dart';
import 'package:fourpiconeword/scoped-models/connectedmodel.dart';
import 'package:games_services/games_services.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainModel _model = MainModel();

    GamesServices.signIn();
    return ScopedModel(
      model: _model,
      child: MaterialApp(
        title: '4 Pic One Word',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: MyHomePage(),
      ),
    );
  }
}
