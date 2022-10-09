import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_voice/screens/Login/login_screen.dart';
import 'package:flutter_voice/screens/Welcome/components/login_signup_btn.dart';
import 'package:flutter_voice/screens/Welcome/components/welcome_image.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const WelcomeImage(),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: Hero(
                  tag: "login_btn",
                  child: ElevatedButton(
                    onPressed: () => fetchAlbum(context),
                    child: Text(
                      "Output".toUpperCase(),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    ));
  }
}

Future<String> fetchAlbum(context) async {
  print('hello');
  final response = await http
      .get(Uri.parse('https://dcf6-34-133-192-93.ngrok.io//find_abnormal'));
  print(jsonDecode(response.body));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Result'),
        content: Text(
          jsonDecode(response.body),
          style: TextStyle(fontSize: 25, color: Colors.green),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
