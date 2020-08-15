import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  void getData() async{
    // simulate network request for a username
   await Future.delayed(Duration(seconds: 3), () {
      print('Yoshi');
    });

    // simulate network request for a boi
    Future.delayed(Duration(seconds: 2), () {
      print('Biography of Yoshi');
    });

    print('statement');
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title:Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is: $counter'),
      ),
    );
  }
}
