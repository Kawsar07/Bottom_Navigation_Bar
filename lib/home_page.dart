import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
     // appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: Text('Hellow Home Page', style: TextStyle(
          fontSize: 27,
          color: Colors.red,
        ),),
      ),
    );
  }
}
