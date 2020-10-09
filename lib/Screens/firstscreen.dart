import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _cIndex = 0;
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed ,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dehaze,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_more),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_drive_file,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          )
        ],
        onTap: (index){
          _incrementTab(index);
        },
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
