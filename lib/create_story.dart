import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wh_app/radio.dart';
import 'package:wh_app/sell_story.dart';

class create_story extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _create_story();
  }
}



class _create_story extends State<create_story> {
  bool isPaid = true;
  var _currencies = [
    "Delhi",
    "Uttar Pradesh",
    "Mumbai",
  ];
  String? selectedValue;
  int _value = 1;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Icon(Icons.arrow_back)
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 10,right: 15,bottom: 2),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Create Story",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Story Information",style: TextStyle(
                    fontSize: 17,
                    fontFamily: "poppins",
                  ),)),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.all(12.0),
                    // padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  Color(0xffFFB700),width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("Story Type",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Colors.black,
                              ),),
                          ),
                          icon: Icon(                // Add this
                            Icons.keyboard_arrow_down_sharp,  // Add this
                            color: Colors.black,
                            size: 30,// Add this
                          ),
                          value: selectedValue,
                          isDense: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                            print(selectedValue);
                          },
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(value,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 4,right: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Headline ', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "poppins"),),
                      TextSpan(
                        text: '(Maximum 20 words) ',
                        style: TextStyle(fontFamily: "poppins"),
                      ),
                      TextSpan(text: '20 Left', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "poppins"),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
              child: Container(
                height: 45,
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Headline",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFB700),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFB700),
                          width: 1,
                        ),
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.all(12.0),
                    // padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  Color(0xffFFB700),width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("Category",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Colors.black,
                              ),),
                          ),
                          icon: Icon(                // Add this
                            Icons.keyboard_arrow_down_sharp,  // Add this
                            color: Colors.black,
                            size: 30,// Add this
                          ),
                          value: selectedValue,
                          isDense: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                            print(selectedValue);
                          },
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(value,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.all(12.0),
                    // padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  Color(0xffFFB700),width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("English",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Colors.black,
                              ),),
                          ),
                          icon: Icon(                // Add this
                            Icons.keyboard_arrow_down_sharp,  // Add this
                            color: Colors.black,
                            size: 30,// Add this
                          ),
                          value: selectedValue,
                          isDense: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                            print(selectedValue);
                          },
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(value,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.all(12.0),
                    // padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  Color(0xffFFB700),width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("6/ 10/ 2022",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Colors.black,
                              ),),
                          ),
                          icon: Icon(                // Add this
                            Icons.keyboard_arrow_down_sharp,  // Add this
                            color: Colors.black,
                            size: 30,// Add this
                          ),
                          value: selectedValue,
                          isDense: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                            print(selectedValue);
                          },
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(value,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.all(12.0),
                    // padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  Color(0xffFFB700),width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("State",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Colors.black,
                              ),),
                          ),
                          icon: Icon(                // Add this
                            Icons.keyboard_arrow_down_sharp,  // Add this
                            color: Colors.black,
                            size: 30,// Add this
                          ),
                          value: selectedValue,
                          isDense: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                            print(selectedValue);
                          },
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(value,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.all(12.0),
                    // padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  Color(0xffFFB700),width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("Country",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Colors.black,
                              ),),
                          ),
                          icon: Icon(                // Add this
                            Icons.keyboard_arrow_down_sharp,  // Add this
                            color: Colors.black,
                            size: 30,// Add this
                          ),
                          value: selectedValue,
                          isDense: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                            print(selectedValue);
                          },
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(value,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 4,right: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Pitch ', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "poppins"),),
                      TextSpan(
                        text: '(Maximum 100 words) ',
                        style: TextStyle(fontFamily: "poppins"),
                      ),
                      TextSpan(text: '100 Left', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "poppins"),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Message",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFB700),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFB700),
                      width: 1,
                    ),
                  ),
                ),
              ),),

            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15,right: 15,top: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
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
            /* images*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Images",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 216,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF2F2F2),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 216,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color:Color(0xffFFDB43),width: 1.5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Upload Your Images (5 max.)",style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.bold
                      ),),
                      Text("PNG/ JPEG/ JPG",style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "poppins",
                      ),),

                      Padding(
                        padding: const EdgeInsets.only(top: 50.0,left: 15,right: 15,bottom: 15),
                        child: DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(20),
                            dashPattern: [5, 5],
                            color: Colors.grey,
                            strokeWidth: 1.5,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffE9E9E9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/upload.svg',
                                      width: 30,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Drag & drop or browse to choose a file",style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "poppins",
                                        ),)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("0 of 2 Uploading....",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
              child: LinearProgressIndicator(
                minHeight: 45,
                backgroundColor: Color(0xffE3E3E3),
                value: 0.7,
                valueColor: new AlwaysStoppedAnimation<Color>(Color(0xffFFDB43)),
                semanticsLabel: 'Linear progress indicator',
                semanticsValue:"uploading",
              ),
            ),

            /* videos*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Videos",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 216,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF2F2F2),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 216,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color:Color(0xffFFDB43),width: 1.5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Upload Your Videos (3 max.)",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold
                      ),),
                      Text("MP4 Only",style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "poppins",
                      ),),

                      Padding(
                        padding: const EdgeInsets.only(top: 50.0,left: 15,right: 15,bottom: 15),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(20),
                          dashPattern: [5, 5],
                          color: Colors.grey,
                          strokeWidth: 1.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffE9E9E9),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                    'assets/upload.svg',
                                    width: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Drag & drop or browse to choose a file",style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "poppins",
                                      ),)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("0 of 2 Uploading....",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
              child: LinearProgressIndicator(
                minHeight: 45,
                backgroundColor: Color(0xffE3E3E3),
                value: 0.2,
                valueColor: new AlwaysStoppedAnimation<Color>(Color(0xffFFDB43)),
                semanticsLabel: 'Linear progress indicator',
                semanticsValue:"uploading",
              ),
            ),

            /* audio*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Audios",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 216,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF2F2F2),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 216,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color:Color(0xffFFDB43),width: 1.5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Upload Your Audios (3 max.)",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold
                      ),),
                      Text("MP3 Only",style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "poppins",
                      ),),

                      Padding(
                        padding: const EdgeInsets.only(top: 50.0,left: 15,right: 15,bottom: 15),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(20),
                          dashPattern: [5, 5],
                          color: Colors.grey,
                          strokeWidth: 1.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffE9E9E9),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                    'assets/upload.svg',
                                    width: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Drag & drop or browse to choose a file",style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "poppins",
                                      ),)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("0 of 2 Uploading....",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
              child: LinearProgressIndicator(
                minHeight: 45,
                backgroundColor: Color(0xffE3E3E3),
                value: 0.4,
                valueColor: new AlwaysStoppedAnimation<Color>(Color(0xffFFDB43)),
                semanticsLabel: 'Linear progress indicator',
                semanticsValue:"uploading",
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 5),
              child: Row(
                children: [
                  Checkbox(
                    value: isPaid,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    onChanged: (bool? value) {
                      setState(() {
                        isPaid = value ?? false;
                      });
                    },
                  ),
                  const Text("Team",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: "poppins"
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
              child: Row(
                children: [
                Text("  #",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "poppins",
                ),),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("    Team Name",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                      ),)),
                ],
              ),
            ),
            MyRadioListTile<int>(
              value: 1,
              groupValue: _value,
              leading: 'A',
              title: Text('Story Team 1'),
              trailing: Icon(Icons.edit_note,color: Color(0xff21AE2F),),
              onChanged: (value) => setState(() => _value = value!),
            ),
            MyRadioListTile<int>(
              value: 2,
              groupValue: _value,
              leading: 'B',
              title: Text('Team 3'),
              trailing: Icon(Icons.edit_note,color: Color(0xff21AE2F),),
              onChanged: (value) => setState(() => _value = value!),
            ),
            MyRadioListTile<int>(
              value: 3,
              groupValue: _value,
              leading: 'C',
              title: Text('Team Testing 5'),
              trailing: Icon(Icons.edit_note,color: Color(0xff21AE2F),),
              onChanged: (value) => setState(() => _value = value!),
            ),
            MyRadioListTile<int>(
              value: 4,
              groupValue: _value,
              leading: 'C',
              title: Text('Demo Team'),
              trailing: Icon(Icons.edit_note,color: Color(0xff21AE2F),),
              onChanged: (value) => setState(() => _value = value!),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: BoxDecoration(
                    color:Color(0xffEAEAEA),
                    border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Enter Story Idea",style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "poppins"
                ),)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
              child: Row(
                children: [
                  //  Expanded(
                  Checkbox(
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  // ),
                  InkWell(
                    onTap: (){
                      print("rich");
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: ' I agree the',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 13,fontFamily: "poppins"),
                          children: [
                            TextSpan(
                              text: ' term and conditions',
                              style: const TextStyle(
                                color: Color(0xff0923AA),
                                fontSize: 13,
                                fontFamily: "poppins",
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15,right: 15,top: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFDB43),
                  ),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => sell_story()));
                    },
                    child: Text("SELL STORY",
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
    );
  }
}