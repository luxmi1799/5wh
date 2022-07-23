import 'dart:ui';

import 'package:flutter/material.dart';

class earning extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _earing();
  }
}

class _earing extends State<earning> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar:  AppBar(
         centerTitle: true,
         title: Text("Earning",style: TextStyle(
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

       body: Padding(
         padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
         child: Container(
           width: MediaQuery.of(context).size.width,
           height: 215,
           decoration: BoxDecoration(
               color: Color(0xffFBFBFB),
               borderRadius: BorderRadius.circular(15),
               boxShadow: [BoxShadow(
                 color: Colors.grey,
                 blurRadius: 7.0,
               ),]
           ),
         child:  Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(10),
               child: Table(
                   border: TableBorder.all(width: 0.001), // Allows to add a border decoration around your table
                   children: [

                     TableRow(children :[
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child:
                         Text('Story Name',style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('ABCD',
                           style: TextStyle(
                             fontSize: 15,
                           ),),
                       ),
                     ]),

                     TableRow(children :[
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('Buyer',style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('ABCD',
                           style: TextStyle(
                             fontSize: 15,
                           ),),
                       ),
                     ]),

                     TableRow(children :[
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('Price',style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('₹ 1000',
                           style: TextStyle(
                             fontSize: 15,
                           ),),
                       ),
                     ]),



                     TableRow(children :[
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('Date',style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Text('15/05/2022',
                           style: TextStyle(
                             fontSize: 15,
                           ),),
                       ),
                     ]),

                   ]
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0),
               child: InkWell(
                 onTap: (){
                   setState(() {
                     showDialog(
                       context: context,
                       builder: (context) =>  BackdropFilter(
                         filter: ImageFilter.blur(sigmaX: 3, sigmaY: 2.5),
                         child: Dialog(
                          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                           backgroundColor: Colors.white.withOpacity(0.1),
                           child: _dialogContent(context),
                         ),
                       ),
                     );
                     // BackdropFilter(
                     //   filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                     //   child: Dialog(
                     //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                     //     backgroundColor: Colors.white.withOpacity(0.5),
                     //     child: _dialogContent(context),
                     //   ),
                     // );
                   });
                 },
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.info,color: Color(0xff0923AA),size: 18,),
                     Text("  Total Price",style: TextStyle(
                       fontSize: 13,
                       fontFamily: "poppins",
                       fontWeight: FontWeight.bold,
                       color: Color(0xff0923AA)
                     ),)
                   ],
                 ),
               ),
             )
           ],
         ),
         ),
       ),
     );
  }
}

Widget _dialogContent(BuildContext context) {
  return  Container(
    width: MediaQuery.of(context).size.width,
    height: 210,
    decoration: BoxDecoration(
        color: Color(0xffE6E6E6),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          color: Colors.grey,
          blurRadius: 7.0,
        ),]
    ),
    child:  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Table(
              border: TableBorder.all(width: 0.001), // Allows to add a border decoration around your table
              children: [

                TableRow(children :[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child:
                    Text('Story Total Price',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text('₹ 14000',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                  ),
                ]),

                TableRow(children :[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text('Platform Charge',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text('15%  x 14460',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                  ),
                ]),

                TableRow(children :[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text('Stripe',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text('3%  x 1000',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                  ),
                ]),
              ]
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
          child: InkWell(
            child: Row(
            //  mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(" Story Total Price",style: TextStyle(
                    fontSize: 13,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0923AA)
                ),),
                SizedBox(
                  width: 25,
                ),
                Text("₹ 24800",style: TextStyle(
                    fontSize: 13,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0923AA)
                ),),
              ],
            ),
          ),
        )
      ],
    ),
  );
}