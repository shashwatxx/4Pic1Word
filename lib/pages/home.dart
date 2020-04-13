import 'package:flutter/material.dart';
import 'package:fourpiconeword/pages/settings.dart';
import 'package:fourpiconeword/scoped-models/connectedmodel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width.toDouble();

    AppBar _buildAppBar(MainModel model) {
      return AppBar(
        title: Text("4 Pics 1Word"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SettingsPage(model),
              ),
            );
          },
        ),
        actions: [
          Container(
              child: Row(
            children: <Widget>[
              Image.network(
                "https://purepng.com/public/uploads/large/purepng.com-gold-coinsflatcoinsroundmetalgoldclipart-1421526479709hi2im.png",
                height: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text("${width.toInt()}"),
              SizedBox(
                width: 10,
              )
            ],
          ))
        ],
      );
    }

    return ScopedModelDescendant(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Scaffold(
        appBar: _buildAppBar(model),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green,
                elevation: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: Text(
                    "Play",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.3,
              ),
              Card(
                elevation: 20,
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  child: Text(
                    "Daily Puzzle",
                    style: GoogleFonts.balooDa(fontSize: width * 0.09),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 20,
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  child: Text(
                    "MultiPlayer",
                    style: GoogleFonts.balooDa(fontSize: width * 0.09),
                  ),
                ),
              )
            ],
          ),
        )),
      );
    });
  }
}
