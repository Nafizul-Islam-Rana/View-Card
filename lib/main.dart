import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/nxt_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('View Card',
        style: TextStyle(
          color: Colors.greenAccent,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
     ),
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/4.jpg'),
              radius: 100,
            ),
            Text(
              'Md Nafizul Islam Rana',
              style: TextStyle(
                fontSize: 30,
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily:'AbrilFatface',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Apps Developer',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.greenAccent,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'
              ),
            ),
            SizedBox(
              child: Divider(
                thickness: 4,
                color: Colors.lightGreenAccent,
                height: 30,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(onTap: (){

              },
                title: Text('Email'),
                leading: Icon(Icons.email, color: Colors.orange),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                onTap: (){},
                title: Text('Password'),
                leading: Icon(Icons.password),
              ),
            ),
           Card(
             child: FlatButton(
               child: Text('Login',
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.green
               ),
               ),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>NxtPage())
                 );
               },
             ),
           ),

            Card(
              child: FlatButton(
                child: Text('Registration',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightGreen
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NxtPage())
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}



