import 'package:flutter/cupertino.dart';

import 'OrderDetails.dart';
import 'Home.dart';

void moveToOrderDetails(String file, int id){

  data.amount = 1;
  data.file = file;
  data.num = id.toString();
  data.name = myList[id];


}

String getUserName(){
  return "Ali Alabdulaal";
}


String getUserEmail(){
  return "AliDev@gmail.com";
}
