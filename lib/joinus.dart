import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:wh_app/personal.dart';


class joinus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _login();
  }
}

class _login extends State<joinus> {
  String selected = "first";
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
                    top: MediaQuery.of(context).size.height * 0.83,
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
          SingleChildScrollView(child:
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
                height: 100,
              ),

              Center(
                child: Text("Join Us",style: TextStyle(
                    fontSize: 29,
                    color: Colors.black
                ),),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Choose the role that best describes you.",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                  ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 'first';
                    });
                  },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: selected == 'first' ? Color(0xffFFDB43) : Color(0xffEEEEEE),width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/round.png",width: 90,height: 90,),
                              Image.asset("assets/profile.png",width: 50,height: 50,),
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Media House",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text("You will need futher verification if you are from some media house.",
                                  style: TextStyle(
                                    color: Color(0xff383838),
                                    fontSize: 12,
                                  ),),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 'second';
                    });
                  },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: selected == 'second' ? Color(0xffFFDB43) : Color(0xffEEEEEE),width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/round.png",width: 90,height: 90,),
                              Image.asset("assets/profile.png",width: 50,height: 50,),
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Journalist",
                                style: TextStyle(
                                  color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text("You can simply register yourself to get all the latest updates.",
                                  style: TextStyle(
                                    color: Color(0xff383838),
                                    fontSize: 12,
                                  ),),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => prsnl_form()));
                      },
                      child: Text("Continue",
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

            ],
          ),
          ),
        ),
      ],
    );
  }
}