import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'forgetpwsd.dart';

class prsnl_form extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return _prnsl_form();
  }
}

class _prnsl_form extends State<prsnl_form> {
  String countryValue="";
  String stateValue="";
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
                  child: Text("Journalist Personal \n Information",style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'poppins',
                      color: Colors.black,
                     //fontWeight: FontWeight.bold
                  ),),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(right: 15.0,bottom: 3),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/round.png",width: 90,height: 90,),
                      LimitedBox(
                        child: SvgPicture.asset(
                          'assets/user.svg',
                          width: 50.0,
                          height: 50.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                          width: 1.5,
                        ),
                      ),
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Surname",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                          width: 1.5,
                        ),
                      ),
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
                child: IntlPhoneField(
                  initialCountryCode: 'IN',
                  decoration: InputDecoration(
                  labelText: "Mobile Number",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                  color: Color(0xffFFDB43),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                  color: Color(0xffFFDB43),
                  width: 1.5,
                    ),
                    ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                          width: 1.5,
                        ),
                      ),
                    )
                ),
              ),


              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
              //   child: SelectState(
              //     onCountryChanged: (value) {
              //       setState(() {
              //         countryValue = value;
              //       });
              //     },
              //     onStateChanged:(value) {
              //       setState(() {
              //         stateValue = value;
              //       });
              //     }, onCityChanged: (String value) {
              //
              //   },
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Pincode",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFDB43),
                          width: 1.5,
                        ),
                      ),
                    )
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