import 'package:flutter/material.dart';
import 'package:fourpiconeword/mywidgets/customrow.dart';
import 'package:fourpiconeword/scoped-models/connectedmodel.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  final MainModel model;
  SettingsPage(this.model);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white70),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Sound",
                    style: GoogleFonts.snippet(fontSize: width * 0.06),
                  ),
                ),
                Switch(
                    value: widget.model.soundEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        widget.model.toggleSound(value);
                      });
                    }),
              ],
            ),
            BuildMyCustomRow(
              width: width,
              title: "Notification with Free Hints",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Daily Puzzle Notification",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Multiplayer Notification",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Privacy Policy",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Report A problem",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Change Player Name",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Privacy according to CCPA",
              onPressed: () {},
            ),
            BuildMyCustomRow(
              width: width,
              title: "Terms of Service",
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Send Usage Data",
                    style: GoogleFonts.snippet(fontSize: width * 0.06),
                  ),
                ),
                Switch(
                    value: widget.model.sendUsageData,
                    onChanged: (bool value) {
                      setState(() {
                        widget.model.toggleUsageData(value);
                      });
                    }),
              ],
            ),
            BuildMyCustomRow(
              width: width,
              title: "Imprint",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
