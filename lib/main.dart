import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GET Request"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          fetchData();
        }),
      )
    );
  }

  void fetchData() async {
    var result = await get('https://jsonplaceholder.typicode.com/photos');
    print(result.body);
  }
}

