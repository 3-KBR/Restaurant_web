import 'package:flutter/material.dart';
import 'Widget_Maker.dart';
import 'Utalities.dart';



String file = "Donats";
List juiceList = ["","Apple Juice","RedBerry Juice","Manjo Juice","Pinapple Juice","Orange Juice","WaterMelon Juice","BlackBerry Juice","Mint&Lemon Juice"];
List donatsList = ["","Croissant","Chausson","Chocolate Donut","Pink Donut","Mouna","White Cookies","Brown Cookies","Blue Donut"];
List icecreamList = ["","Vanella","Chocolate","RedBerry","Mint","Toffee","Cotton Candy","StrawBerry","Oreo"];
List coffeeList = ["","Americano","Cappuccino","Lattee","Hot Chocolate","Black Tea","Yellow Tea","Green Tea","Blue Tea"];
List myList = donatsList;




class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}



class _Home extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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





              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(child: Row(
                    children: [
                      MenuSec(name: "Hot Drinks",method: (){setState(() {file = "Coffee";myList = coffeeList;});},),
                      MenuSec(name: "Juice",method: (){setState(() {file = "Juice";myList = juiceList;});},),
                      MenuSec(name: "Baked",method: (){setState(() {file = "Donats";myList = donatsList;});},),
                      MenuSec(name: "Ice Cream",method: (){setState(() {file = "Ice cream";myList = icecreamList;});},),
                    ],
                  ),)
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(child: Column(
                    children: [

                      Row(children: [
                        MenuCard(img: "Image/$file/1.jpg", method: (){moveToOrderDetails(file,1);Navigator.pushNamed(context, "/4");}),
                        MenuCard(img: "Image/$file/2.jpg", method: (){moveToOrderDetails(file,2);Navigator.pushNamed(context, "/4");}),
                        MenuCard(img: "Image/$file/3.jpg", method: (){moveToOrderDetails(file,3);Navigator.pushNamed(context, "/4");}),
                        MenuCard(img: "Image/$file/4.jpg", method: (){moveToOrderDetails(file,4);Navigator.pushNamed(context, "/4");}),
                      ],),
                      Row(children: [
                        MenuCard(img: "Image/$file/5.jpg", method: (){moveToOrderDetails(file,5);Navigator.pushNamed(context, "/4");}),
                        MenuCard(img: "Image/$file/6.jpg", method: (){moveToOrderDetails(file,6);Navigator.pushNamed(context, "/4");}),
                        MenuCard(img: "Image/$file/7.jpg", method: (){moveToOrderDetails(file,7);Navigator.pushNamed(context, "/4");}),
                        MenuCard(img: "Image/$file/8.jpg", method: (){moveToOrderDetails(file,8);Navigator.pushNamed(context, "/4");}),
                      ],),



                    ],
                  ),)
              ),


            ],
          ),
        ),
      ),

    );



  }

}