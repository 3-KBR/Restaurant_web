import 'package:flutter/material.dart';
import 'package:projectv2/Utalities.dart';
import 'Widget_Maker.dart';


class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}



class _Profile extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text('My Orders'),
        backgroundColor: Color(0xFF272727),
        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.history,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/1");
            },
          ),

          IconButton(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/3");
            },
          ),

          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/0");
            },
          ),

          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/6");
            },
          ),





          SizedBox(width: 20,),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.person,size: 220,color: Color(0xFF272727),),
              TextBoxW(labelText: getUserName()),
              TextBoxW(labelText: getUserEmail()),
            ],
          ),
        ),
      ),


    );



  }

}