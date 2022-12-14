import 'package:flutter/material.dart';
import 'Cart.dart';
import 'Widget_Maker.dart';


class OrderIndex{
  static int index = 0;
}

class ShowOrders extends StatefulWidget {
  @override
  _ShowOrders createState() => _ShowOrders();
}



class _ShowOrders extends State<ShowOrders> {

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

      body: SingleChildScrollView(
        child: Center(child: Column(children: [
          SizedBox(height: 60,),
          for ( int i = CartLists.orderStartIndex[OrderIndex.index] ; i < CartLists.orderStartIndex[OrderIndex.index+1] ; i++ ) cartwidget(img: "Image/${CartLists.file[i]}/${CartLists.num[i]}.jpg", name: CartLists.name[i].toString(), amount: CartLists.amount[i].toString(), price: CartLists.price[i].toString()),


        ],),),
      ),



    );



  }

}