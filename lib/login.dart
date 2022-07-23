import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'forgetpwsd.dart';
import 'homepage.dart';
import 'joinus.dart';


class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _login();
  }
}

class _login extends State<login> {
  bool isPaid = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                  ),
                   Image.asset(
                          'assets/loginbg.png',
                          width:MediaQuery.of(context).size.width,
                          height: 300,
                          fit: BoxFit.cover),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.8,
                    right: -20,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                          'assets/greybottom.png',
                          width:250,
                          fit: BoxFit.cover),
                    ),
                  )

                ]),
              ],
            )
        ),
        Scaffold(
          //  backgroundColor: Color(0xffCC0000),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body:
         SingleChildScrollView(
           child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/miniglobe.png",width: 100,height: 100,) ,
                    Text("5WH",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),)
                  ],
                ),

                SizedBox(
                  height: 70,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                  child: Text("Login to Continue",style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold
                  ),),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 40,bottom: 10),
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFDB43), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFDB43), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Username / Email ID",
                      hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                      suffixIcon: IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.lock,color: Colors.grey,),
                      ),
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFDB43), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFDB43), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                      suffixIcon: IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.email_outlined,color: Colors.grey,),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isPaid,
                            onChanged: (bool? value) {
                              setState(() {
                                isPaid = value ?? false;
                              });
                            },
                          ),
                          const Text("Remember me",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                          ),),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => forget()));
                        },
                        child: const Text("Forgot Password?",style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 15,right: 25,top: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFDB43),
                      ),
                      child: FlatButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
                        },
                        child: Text("SIGN IN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            backgroundColor:  Color(0xffFFDB43),
                          ),),
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => joinus()));
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )
                            ),
                            TextSpan(
                              text: 'Join us',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                  // Align(
                  //     alignment: Alignment.bottomRight,
                  //     child: FittedBox(child: Image.asset("assets/bottimlogin.png",fit: BoxFit.fill,width: 260,))),
              ],
            ),
         ),
        ),
      ],
    );
  }
}