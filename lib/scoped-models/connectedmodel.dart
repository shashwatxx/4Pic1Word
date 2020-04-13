import 'package:scoped_model/scoped_model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class MainModel extends Model {
  bool soundEnabled = true;
  bool sendUsageData = true;
  void toggleSound(bool value) {
    soundEnabled = value;
    notifyListeners();
  }

  void toggleUsageData(bool value) {
    sendUsageData = value;
    notifyListeners();
  }

  var decodedData;
  getData() async {
    http.Response response =
        await http.get('http://3.6.119.41:5000/quiz/questions/');

    if (response.statusCode == 200) {
      decodedData = json.decode(response.body);
      print(decodedData);
    } else {
      decodedData = null;
    }
    return decodedData;
  }
}
