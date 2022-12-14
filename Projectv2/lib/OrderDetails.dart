import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Cart.dart';


class data{
  static int amount = 1 ;
  static int price = 17 ;
  static String file ="";
  static String num ="";
  static String name ="";

}

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetails createState() => _OrderDetails();
}



class _OrderDetails extends State<OrderDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee Shop",style: TextStyle(color: Color(0xFFFFFFFF)),),
        backgroundColor: Color(0xFF272727),
      ),

        body: Center(child: Container(
          width: 1500,
          child: Column(children: [
            SizedBox(height: 50,),
            Row(children: [
              Expanded(child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(300), // Image radius
                  child: Image.asset("Image/${data.file}/${data.num}.jpg",fit: BoxFit.cover,),
                ),
              ),),
              Expanded(child: Column(children: [SizedBox(height: 100,),Center(child: Text(data.name,style: TextStyle(fontSize: 90),)),SizedBox(height: 140,),Center(child: Text(data.price.toString(),style: TextStyle(fontSize: 70,color: Colors.red),))],)),
            ],),
            SizedBox(height: 50,),
            Row(children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container(),),
                    Expanded(child: GestureDetector(child: Icon(FontAwesomeIcons.circleMinus , size: 50,color: Color(0xFF272727)), onTap: (){setState(() {data.amount--;if(data.amount<=1){data.amount=1;}; data.price = 17*data.amount;});})),
                    Expanded(child: Center(child: Text(data.amount.toString(),style: TextStyle(fontSize: 50),))),
                    Expanded(child: GestureDetector(child: Icon(FontAwesomeIcons.circlePlus , size: 50,color: Color(0xFF272727)), onTap: (){setState(() {data.amount++; data.price = 17*data.amount;});})),
                    Expanded(child: Container(),),
                  ],
                ),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                    width: 175,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        CartLists.name.add(data.name);
                        CartLists.amount.add(data.amount);
                        CartLists.num.add(data.num);
                        CartLists.price.add(data.price);
                        CartLists.file.add(data.file);
                        CartLists.index++;
                        data.amount = 1;
                        data.price = 17;
                        Navigator.pushNamed(context, "/0");
                      },
                      child: Text("Add",style: TextStyle(fontSize: 30),),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF272727),
                          fixedSize: Size(175, 55),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                    )),
              ),)
            ],)
          ],),
        ),),
    );



  }

}