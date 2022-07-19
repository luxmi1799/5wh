import 'package:flutter/material.dart';

class sell_story extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _sell_story();
  }
}

class _sell_story extends State<sell_story> {
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
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
               child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Sell Story",style: TextStyle(
                     fontSize: 28,
                     fontWeight: FontWeight.bold,
                     fontFamily: "poppins",
                   ),)),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
               child: FormField<String>(
                 builder: (FormFieldState<String> state) {
                   return Container(
                     height: 55,
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
                 height: 55,
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
                     height: 55,
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
                     height: 55,
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
                     height: 55,
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
                     height: 55,
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
                     height: 55,
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
                         color: Colors.white,
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