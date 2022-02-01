import 'package:flutter/material.dart';

class NxtPage extends StatelessWidget {
  const NxtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page',
          style: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body:
      Center(
        child: RaisedButton(
          textColor: Colors.greenAccent,
          color: Colors.deepPurpleAccent,
          child: Text('Second Page',
          style: TextStyle(
              fontSize: 25,
          ),),
          padding: EdgeInsets.all(20),
          onPressed: (){},
        ),
      ),

    );
  }
}
