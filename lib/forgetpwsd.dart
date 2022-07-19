import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class forget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _prnsl_form();
  }
}

class _prnsl_form extends State<forget> {
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
            // leadingWidth: 10, //
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body:
          SingleChildScrollView(child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Forgot Password?",style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'poppins',
                    color: Colors.black,
                    //fontWeight: FontWeight.bold
                  ),),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 300,
                      height: 230,
                      child: Image.asset("assets/forgot.png",fit: BoxFit.cover,)),
                ),
              ),




             Padding(
               padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 15),
               child: Center(
                 child: Text("Select which contact details should we use to reset your password.",
                   style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppins',
                      color: Colors.black,
                      //fontWeight: FontWeight.bold
                      ),
                   ),
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
                    height: 115,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: selected == 'first' ? Color(0xffFFDB43) : Color(0xffEEEEEE),width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/round.png",width: 80,height: 80,),
                              Image.asset("assets/msg.png",width: 45,height: 45,),
                            ],
                          ),

                          SizedBox(
                            width: 12,
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("via SMS:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                ),),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(" +91 Mobile Number",
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
                    height: 115,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: selected == 'second' ? Color(0xffFFDB43) : Color(0xffEEEEEE),width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/round.png",width: 80,height: 80,),
                              SvgPicture.asset(
                                'assets/email.svg',
                                width: 45.0,
                                height: 45.0,
                                color: Color(0xffFFDB43),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("via Email:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                ),),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text("xyz@gmail.com",
                                  style: TextStyle(
                                    color: Color(0xff383838),
                                    fontSize: 14,
                                    fontFamily: "poppins"
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
                padding: const EdgeInsets.only(left: 15,bottom: 15,right: 15,top: 30),
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
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => home_page()));
                      },
                      child: Text("SAVE & CONTINUE",
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