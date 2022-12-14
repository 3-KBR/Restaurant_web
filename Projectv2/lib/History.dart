import 'package:flutter/material.dart';
import 'package:projectv2/ShowOrders.dart';
import 'Widget_Maker.dart';



class HistotyList{
  static List orderList = [];
}

class History extends StatefulWidget {
  @override
  _History createState() => _History();
}



class _History extends State<History> {

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
        child: Container(child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 60,),

            for ( int i=0 ; i < HistotyList.orderList.length ;i++ ) historywidget(id: "OrderId: #00$i", date: "14 / 12 / 2022", total: "total: 434 SR", condition: "Pending",method: (){print(HistotyList.orderList);OrderIndex.index = i; Navigator.pushNamed(context, "/5");},),
            SizedBox(height: 180,),
          ],),
        ),),
      ),

    );



  }

}