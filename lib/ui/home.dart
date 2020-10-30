
import 'package:flutter/material.dart';


class ScaffoldWidget extends StatelessWidget {

  _tapAlarm() {
    debugPrint('Tapped alarm');
  }

  _tapEmail() {
    debugPrint('Tapped email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: _tapEmail),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapAlarm)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.call_missed) ,
        onPressed: () {debugPrint('You got a missed call!');}
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'First'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Second'),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Third'),
        ],
        onTap: (int index) {debugPrint('Tapped item: $index');},
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
          ]
        ),
      )
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('Hello Again!'),
          backgroundColor: Colors.amberAccent.shade700
          );
        Scaffold.of(context).showSnackBar(snackBar);
      },

      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Button'),
      )
    );
  }
}



// below is a widget for a Hello World message without Scaffold, with an option to return Center (commented out), or return Material

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Center(
//     //   child: Text('Hello World', textDirection: TextDirection.ltr)
//     // );
//     return Material(
//       color: Colors.deepOrange,
//       child: Center(
//         child: Text(
//           'Hello World', 
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 23.4,
//             fontStyle: FontStyle.italic,
//           ),
//         )
//       )
//     );
//   }
// }