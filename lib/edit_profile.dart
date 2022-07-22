import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class edit_profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _edit_profile();
  }
}

class _edit_profile extends State<edit_profile> {
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
         title: Text("Edit Profile",style: TextStyle(
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

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Stack(
                   clipBehavior: Clip.none,
                   children: [
                     Image.asset("assets/demop.png",width: 120,height: 120,),
                     Positioned(
                       right: -15.0,
                       bottom: -10.0,
                       child:
                       Stack(
                         alignment: Alignment.center,
                         children: [
                           Image.asset("assets/yellowbg.png",width: 65,height: 65,),
                           SvgPicture.asset("assets/photo.svg",color: Colors.black,width: 35,)
                         ],
                       )
                     )
                   ],
                 ),

                 Stack(
                   clipBehavior: Clip.none,
                   children: [
                     Image.asset("assets/demop.png",width: 120,height: 120,),
                     Positioned(
                         right: -15.0,
                         bottom: -10.0,
                         child:
                         Stack(
                           alignment: Alignment.center,
                           children: [
                             Image.asset("assets/yellowbg.png",width: 65,height: 65,),
                             SvgPicture.asset("assets/video.svg",color: Colors.black,width: 35,)
                           ],
                         )
                     )
                   ],
                 ),
               ],
             ),

             Padding(
               padding: const EdgeInsets.only(left: 15.0,top: 20,right: 15,bottom: 2),
               child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Personal Details",style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontFamily: "poppins",
                   ),)),
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
                                 hintText: 'enter CVV',
                                 hintStyle: TextStyle(
                                     color: Colors.black,
                                     fontSize: 14
                                 ),
                                 labelText: "First Name",
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
                         child: Padding(
                           padding: const EdgeInsets.all(0),
                           child: Form(
                             child: TextFormField(
                               keyboardType: TextInputType.number,
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
                                 hintText: 'enter code',
                                 hintStyle: TextStyle(
                                     color: Colors.black,
                                     fontSize: 14
                                 ),
                                 labelText: "Middle Name",
                                 labelStyle: TextStyle(
                                     fontSize:15,
                                     color: Colors.black),
                               ),
                             ),
                           ),
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
                               hintText: 'enter CVV',
                               hintStyle: TextStyle(
                                   color: Colors.black,
                                   fontSize: 14
                               ),
                               labelText: "Last Name",
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
                       child: Padding(
                         padding: const EdgeInsets.all(0),
                         child: Form(
                           child: TextFormField(
                             keyboardType: TextInputType.number,
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
                               hintText: 'enter code',
                               hintStyle: TextStyle(
                                   color: Colors.black,
                                   fontSize: 14
                               ),
                               labelText: "Email I’d",
                               labelStyle: TextStyle(
                                   fontSize:15,
                                   color: Colors.black),
                             ),
                           ),
                         ),
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
                               labelText: "Mobile No.",
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
                   ),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
               child: Wrap(
                 direction: Axis.horizontal,
                 children: [

                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 0.0),
                     child: Expanded(
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
                                   color:  Color(0xffFFDB43),width: 1.5,
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
                                       child: Text("City",
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
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 15.0),
                     child: Expanded(
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
                                   color:  Color(0xffFFFDB43),width: 1.5,
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
                                       child: Text("Zipcode",
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
                                 color:  Color(0xffFFDB43),width: 1.5,
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
                   ),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
               child: Container(
                 height: 50,
                 child: TextFormField(
                     decoration: InputDecoration(
                       labelText: "Address",
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
               padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
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
               padding: const EdgeInsets.only(left: 15.0,top: 4,right: 15),
               child: Align(
                 alignment: Alignment.centerLeft,
                 child: Text.rich(
                   TextSpan(
                     children: [
                       TextSpan(text: 'About Me  ', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "poppins",fontSize: 15),),
                       TextSpan(
                         text: '( Maximum 200 words. This would be visible to  Registered Journalists ND Media Outlets) ',
                         style: TextStyle(fontFamily: "poppins"),
                       ),
                     ],
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