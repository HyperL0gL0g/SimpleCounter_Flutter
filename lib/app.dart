import 'package:flutter/material.dart';

class AppState extends State<App>
{
  int i=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('$i'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:   Stack(
    children: <Widget>[
    Align(
    alignment: Alignment.bottomLeft,
    child: FloatingActionButton(
      onPressed: (){
        setState(() {
          i-=1;
        });
      },
      child: Icon(Icons.remove),

    ),
    ),
    Align(
    alignment: Alignment.bottomRight,
    child: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        setState(() {
          i+=1;
        });
      },

    ),

    ),
      Align(
        alignment: Alignment.center ,
        child: FloatingActionButton(
          child: Text('Reset'),
          onPressed: (){
            setState(() {
              i=0;
            });
          },

        ),

      ),
    ],
    ),
      ),
    );

  }

}

class App extends StatefulWidget
{

    createState() {
      return AppState();
    }

}
