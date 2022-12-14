import 'package:flutter/material.dart';
import 'Widget_Maker.dart';
import 'History.dart';


class CartLists{
  static List orderStartIndex = [];
  static List file = [];
  static List num = [];
  static List name = [];
  static List amount = [];
  static List price = [];
  static int sindex = 0;
  static int index = 0;
}


class Cart extends StatefulWidget {
  @override
  _Cart createState() => _Cart();
}



class _Cart extends State<Cart> {

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

            for ( int i =CartLists.sindex ; i < CartLists.index ; i++ ) cartwidget(img: "Image/${CartLists.file[i]}/${CartLists.num[i]}.jpg", name: CartLists.name[i].toString(), amount: CartLists.amount[i].toString(), price: CartLists.price[i].toString()),

            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                  width: 400,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      HistotyList.orderList.add("");
                      CartLists.orderStartIndex.add(CartLists.sindex);
                      CartLists.sindex = CartLists.index;
                      Navigator.pushNamed(context, "/1");
                    },
                    child: Text("Check Out",style: TextStyle(fontSize: 30),),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        fixedSize: Size(175, 55),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  )),
            ),
          ],),
        ),),
      ),
    );



  }

}