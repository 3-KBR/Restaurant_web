import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';

// Create image buttons
class MenuCard extends StatelessWidget {
  MenuCard({required this.img, required this.method});

  final  String img;
  final VoidCallback method;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
        child: GestureDetector(
          onTap: method,
          child: ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: SizedBox.fromSize(
            size: Size.fromRadius(48), // Image radius
            child: Image.asset(img,fit: BoxFit.cover,),
          ),
        ),
        ),
        height: 380,
        width: 1200,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF272727),
        ),


      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String labelText;

  TextFieldWidget({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 18),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF594545), width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF594545), width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

class MenuSec extends StatelessWidget {
  MenuSec({required this.name, required this.method});

  final String name;
  final VoidCallback method;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
          width: 175,
          height: 55,
          child: ElevatedButton(
            onPressed: method
            ,
            child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF272727),
                fixedSize: Size(175, 55),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
            ),
          )),
    );
  }
}

class dishInfo extends StatefulWidget {
  const dishInfo({Key? key}) : super(key: key);

  @override
  State<dishInfo> createState() => _dishInfoState();
}
class _dishInfoState extends State<dishInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(1400), // Image radius
              child: Image.asset("Image/Donats/d1.jpg",height: 300,),
            ),
          ),),
          Expanded(child: Column(children: [
            Row(children: [
              Expanded(child: Text("   Pinky Donat",style: TextStyle(fontSize: 20),),),
              Expanded(child: Text("20SAR",style: TextStyle(fontSize: 20),),),
            ],),
            Row(children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/0");
                    },
                    child: Text("add"),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF272727),
                        fixedSize: Size(175, 55),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    )),
              ),),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/0");
                    },
                    child: Text("add"),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF272727),
                        fixedSize: Size(175, 55),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    )),
              ),),

            ],)
          ],))
        ],
      ),

    );
  }
}

class orderInfo extends StatelessWidget {
  orderInfo({required this.id, required this.date});
  final String id;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: GestureDetector(
        onTap: (){},
        child:Row(children: [
          Expanded(child: Text(id,style: TextStyle(fontSize: 30),)),
          Expanded(child: Text(date,style: TextStyle(fontSize: 30),)),
          Expanded(child: Text("Pending",style: TextStyle(fontSize: 30),)),
        ],),
      ),
      height: 100,
      width: 1000,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),


    );
  }
}

class TextBoxW extends StatelessWidget {
  final String labelText;

  TextBoxW({required this.labelText});
  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        width: 800,
        height: 100,
        margin: EdgeInsets.only(top: 5,bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Color(0xFF272727), width: 1.5),
          // No such attribute
        ),
        child: Center(child: Text(labelText,style: TextStyle(fontSize: 40),)),
      ),),);
  }
}

class cartwidget extends StatelessWidget {
  const cartwidget({required this.img,required this.name, required this.amount, required this.price,}) ;
  final String img;
  final String name;
  final String amount;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 1000,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFC4C1C1),
        ),
        child: Row(
          children: [
            Expanded(child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(48), // Image radius
                child: Image.asset(img,fit: BoxFit.cover,),
              ),
            )),
            SizedBox(width: 40,),
            Expanded(child: Text(name,style: TextStyle(fontSize: 30),)),
            Expanded(child: Text("Amount: "+amount,style: TextStyle(fontSize: 20))),
            Expanded(child: Text("Total price: "+price,style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}

class historywidget extends StatelessWidget {
  const historywidget({required this.id,required this.date, required this.total, required this.condition,required this.method}) ;
  final String id;
  final String date;
  final String total;
  final String condition;
  final VoidCallback method;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 1000,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFC4C1C1),
        ),
        child: GestureDetector(
          onTap: method,
          child: Row(
            children: [
              Expanded(child: Text(id,style: TextStyle(fontSize: 30),)),
              Expanded(child: Text(date,style: TextStyle(fontSize: 30),)),
              Expanded(child: Text(total,style: TextStyle(fontSize: 30),)),
              Expanded(child: Text(condition,style: TextStyle(fontSize: 30),)),
            ],
          ),
        ),
      ),
    );;
  }
}

