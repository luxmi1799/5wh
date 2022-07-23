import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class create_assmt extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
       return _create_ass();
  }
}

class _create_ass extends State<create_assmt> {
  var _currencies = [
    "Delhi",
    "Uttar Pradesh",
    "Mumbai",
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: Text("Create Assignment",style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "poppins"
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Icon(Icons.arrow_back)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
              child: Container(
                height: 50,
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Type Your Story Name",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                            color: Color(0xffFFDB43),
                            width: 1.5
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
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.all(12.0),
                            // padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  Color(0xffFFDB43),width: 1,
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
                                    child: Text("Select Country",
                                      style: TextStyle(
                                        fontSize: 14,
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
                                            fontSize: 14,
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
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Expanded(
                    child: Container(
                      height: 50,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.all(12.0),
                            // padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  Color(0xffFFDB43),width: 1,
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
                                    child: Text("Select State",
                                      style: TextStyle(
                                        fontSize: 14,
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
                                            fontSize: 14,
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
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.all(12.0),
                            // padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  Color(0xffFFDB43),width: 1,
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
                                    child: Text("Select City",
                                      style: TextStyle(
                                        fontSize: 14,
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
                                            fontSize: 14,
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
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Expanded(
                    child: Container(
                      height: 50,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.all(12.0),
                            // padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  Color(0xffFFDB43),width: 1,
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
                                    child: Text("Select Currency",
                                      style: TextStyle(
                                        fontSize: 14,
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
                                            fontSize: 14,
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
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color(0xffFFDB43),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color(0xffFFDB43),
                                  width: 1.5,
                                ),
                              ),
                              border: const OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14
                              ),
                              labelText: "Price",
                              labelStyle: TextStyle(
                                  fontSize:15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Expanded(
                    child: Container(
                      height: 50,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.all(12.0),
                            // padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  Color(0xffFFDB43),width: 1,
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
                                    child: Text("Language",
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
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.all(12.0),
                            // padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:  Color(0xffFFDB43),width: 1,
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
                                    child: Text("Select Keyword",
                                      style: TextStyle(
                                        fontSize: 14,
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
                                            fontSize: 14,
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
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Description",
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
                      width: 1,
                    ),
                  ),
                ),
              ),),

            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 20,right: 15,top: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffFFDB43),
                  ),
                  child: FlatButton(
                    onPressed: (){
                    },
                    child: Text("SAVE ASSIGNMENT",
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