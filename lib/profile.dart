import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wh_app/edit_profile.dart';

class profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _profile();
  }
}

class _profile extends State<profile> {
  bool create = false;
  bool live = false;
  bool team = false;
  bool blog = false;
  bool assisn = false;
  bool contract = false;
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
             SizedBox(
               height: 10,
             ),
             Row(
               children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0),
                     child: Stack(
                       alignment: Alignment.center,
                       children: [
                         SizedBox(
                             width: 100,
                             height: 100,
                             child: Image.asset("assets/profilecircle.png")),
                         // Front image
                         SizedBox(
                             width: 80,
                             height: 80,
                             child: Image.asset("assets/demop.png")),
                       ],
                     ),
                   ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                   child: Container(
                     width: 2,
                     height: 103,
                     color: Colors.grey,
                   ),
                 ),

                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Sarah",style: TextStyle(
                      color: Colors.black,
                       fontFamily: "poppins",
                       fontSize: 32,
                       fontWeight: FontWeight.bold
                     ),),

                     Text("Rating",style: TextStyle(
                         color: Colors.black,
                         fontFamily: "poppins",
                         fontSize: 18,
                     ),),

                     Padding(
                       padding: const EdgeInsets.only(top: 5.0),
                       child: SvgPicture.asset(
                         'assets/rating.svg',
                          width: 100,
                       ),
                     ),
                   ],
                 ),
               ],
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 25),
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: 2,
                 color: Colors.grey.withOpacity(0.5),
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: InkWell(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => edit_profile()));
                 },
                 child: Row(
                   children: [
                     Text("Edit Profile",style: TextStyle(
                     fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                     ),),
                     Spacer(),

                     Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                   ],
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Create Content",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),

                   create == false?InkWell(
                             onTap: (){
                               setState(() {
                                 create = true;
                               });
                             }, child: Icon(Icons.add_circle_outlined,color: Colors.black,size: 22,)):
                                   InkWell(
                                       onTap: (){
                                         setState(() {
                                           create = false;
                                         });
                                       },
                            child:Image.asset(
                              'assets/minus1.png',
                              color: Colors.black,
                              width: 19,
                            ),)
                 ],
               ),
             ),

             Offstage(
               offstage: !create, //true not show
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Text Stories",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                         Spacer(),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("My stories",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Saved Stories",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Photo",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Video",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Audio",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 2,
                       color: Colors.grey.withOpacity(0.5),
                     ),
                   ),


                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Market Place",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Live Stream",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),

                   live == false?InkWell(
                       onTap: (){
                         setState(() {
                           live = true;
                         });
                       }, child: Icon(Icons.add_circle_outlined,color: Colors.black,size: 22,)):
                   InkWell(
                     onTap: (){
                       setState(() {
                         live = false;
                       });
                     },
                     child:Image.asset(
                       'assets/minus1.png',
                       color: Colors.black,
                       width: 19,
                     ),)
                 ],
               ),
             ),

             Offstage(
               offstage: !live, //true not show
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Schedule Streaming",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                         Spacer(),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Streaming List",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 2,
                       color: Colors.grey.withOpacity(0.5),
                     ),
                   ),


                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Favourites",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Manage Team",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),

                   team == false?InkWell(
                       onTap: (){
                         setState(() {
                           team = true;
                         });
                       }, child: Icon(Icons.add_circle_outlined,color: Colors.black,size: 22,)):
                   InkWell(
                     onTap: (){
                       setState(() {
                         team = false;
                       });
                     },
                     child:Image.asset(
                       'assets/minus1.png',
                       color: Colors.black,
                       width: 19,
                     ),)
                 ],
               ),
             ),

             Offstage(
               offstage: !team, //true not show
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Create Team",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                         Spacer(),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Team List",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 2,
                       color: Colors.grey.withOpacity(0.5),
                     ),
                   ),


                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Blog",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),

                   blog == false?InkWell(
                       onTap: (){
                         setState(() {
                           blog = true;
                         });
                       }, child: Icon(Icons.add_circle_outlined,color: Colors.black,size: 22,)):
                   InkWell(
                     onTap: (){
                       setState(() {
                         blog = false;
                       });
                     },
                     child:Image.asset(
                       'assets/minus1.png',
                       color: Colors.black,
                       width: 19,
                     ),)
                 ],
               ),
             ),

             Offstage(
               offstage: !blog, //true not show
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Create Blog",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                         Spacer(),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("My Blog",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 2,
                       color: Colors.grey.withOpacity(0.5),
                     ),
                   ),


                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Assignment",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),

                   assisn == false?InkWell(
                       onTap: (){
                         setState(() {
                           assisn = true;
                         });
                       }, child: Icon(Icons.add_circle_outlined,color: Colors.black,size: 22,)):
                   InkWell(
                     onTap: (){
                       setState(() {
                         assisn = false;
                       });
                     },
                     child:Image.asset(
                       'assets/minus1.png',
                       color: Colors.black,
                       width: 19,
                     ),)
                 ],
               ),
             ),

             Offstage(
               offstage: !assisn, //true not show
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Create Assignment",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                         Spacer(),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Assignment",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 2,
                       color: Colors.grey.withOpacity(0.5),
                     ),
                   ),


                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Recommend User",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("FAQ",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Contracts",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),

                   contract == false?InkWell(
                       onTap: (){
                         setState(() {
                           contract = true;
                         });
                       }, child: Icon(Icons.add_circle_outlined,color: Colors.black,size: 22,)):
                   InkWell(
                     onTap: (){
                       setState(() {
                         contract = false;
                       });
                     },
                     child:Image.asset(
                       'assets/minus1.png',
                       color: Colors.black,
                       width: 19,
                     ),)
                 ],
               ),
             ),

             Offstage(
               offstage: !contract, //true not show
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Master Contract",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                         Spacer(),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Code Of Ethics",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                     child: Row(
                       children: [
                         Text("Sell Story",style: TextStyle(
                             fontFamily: "poppins",
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 2,
                       color: Colors.grey.withOpacity(0.5),
                     ),
                   ),


                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Support",style: TextStyle(
                       fontFamily: "poppins",
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
               child: Row(
                 children: [
                   Text("Sign Out",style: TextStyle(
                       fontFamily: "poppins",
                       color: Color(0xffFF0404),
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
                   Spacer(),
                 ],
               ),
             ),
           ],
         ),
       ),
     );
  }
}