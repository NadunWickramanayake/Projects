import 'package:flutter/material.dart';

void main() => runApp(
     MyApp()
    );

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP._3QPMJ7E-_rbllGOe7OeLgHaHa?w=189&h=189&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
              ),
             Container(
               child: Row(
                 children: <Widget>[
                   Icon(Icons.add_shopping_cart)],
               ),
             )
            ]

          ),
        ),
      ),
    );
  }
}
