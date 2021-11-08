import 'package:bottom_morning/contact_page.dart';
import 'package:bottom_morning/home_page.dart';
import 'package:bottom_morning/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex=0;
  final screen=[
    HomePage(),
    ContactPage(),
    MessagePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Bottom NavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
type:BottomNavigationBarType.fixed ,
        unselectedFontSize: 15,
        unselectedItemColor: Colors.green,
       backgroundColor: Colors.purple,

        selectedItemColor: Colors.red,
        selectedFontSize: 20,
        currentIndex: currentIndex,
        onTap: (index)=>setState(()=>currentIndex=(index),),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, ),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'Camera'),
        ],
      ),
      body:Center(child:screen[currentIndex],),
    );
  }
}
