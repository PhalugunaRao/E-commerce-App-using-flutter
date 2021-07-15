import 'package:flutter/material.dart';

/*
//StatelessWidget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Text("Geethika",
          style: TextStyle(color:Colors.white)
      ),
    );
  }
}*/

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('i am stateful'),
    );
  }
}


