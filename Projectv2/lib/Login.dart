import 'package:flutter/material.dart';
import 'Widget_Maker.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: Color(0xFFFFFFFF)),),
        backgroundColor: Color(0xFF272727),
      ),


      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Image.asset("Image/Home/logo11.jpg",height: 400,),
                SizedBox(height: 20,),
                Container(child: TextFieldWidget(labelText: 'Email'),width: 600,),
                Container(child: TextFieldWidget(labelText: 'Password'),width: 600,),
                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                      width: 175,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/0");
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF272727),
                            fixedSize: Size(175, 55),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                        ),
                      )),
                ),

              ],
            ),
          )
      ),

    );
  }
}