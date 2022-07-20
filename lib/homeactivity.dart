import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class homeactivity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _homeac();
  }
}

class _homeac extends State<homeactivity> {
  late PageController _pageController;
  List<String> images = [
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner3.png"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar:  AppBar(
         centerTitle: true,
         backgroundColor: Colors.transparent,
         elevation: 0.0,
         title: Text("My Home",style: TextStyle(
           fontSize: 22,
           fontWeight: FontWeight.bold,
           fontFamily: "poppins",
         ),),
         leading: Padding(
           padding: const EdgeInsets.only(left: 15.0),
           child: LimitedBox(
             child: SvgPicture.asset(
               'assets/menu.svg',
               color: Colors.black,
             ),
           ),
         ),
         actions: [
           Padding(
             padding: const EdgeInsets.only(right: 0.0),
             child:
             Image.asset("assets/notify.png",width: 60,height: 40,),
             // Icon(Icons.notification_add,color: Colors.white,)
           ),
         ],
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Padding(
                 padding: EdgeInsets.all(15),
                 // Center is a layout widget. It takes a single child and positions it
                 // in the middle of the parent.

                 child: GridView.builder(
                   gridDelegate:
                   new SliverGridDelegateWithFixedCrossAxisCount(
                       childAspectRatio: (1 / .7),
                       crossAxisCount: 2),
                   scrollDirection: Axis.vertical,
                   itemCount: 6,
                   physics: ScrollPhysics(),
                   shrinkWrap: true,
                   itemBuilder: (context, index) {
                     return Padding(
                       padding: const EdgeInsets.all(10.0),
                       child:
                       //Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // children: <Widget>[
                           GestureDetector(
                             onTap: () {
                               // What do i do here?

                               setState(()
                               {
                               });
                             },
                             child: Container(
                               height: 100,
                               width: MediaQuery.of(context).size.width*0.4,
                               decoration: BoxDecoration(
                                 // border: Border.all(color: Color(0xff940D5A)),
                                 gradient: LinearGradient(
                                   colors: [
                                     const Color(0xFFFFDB43),
                                     const Color(0xFFF6F5F3),
                                   ],
                                   begin: Alignment.topCenter,
                                   end: Alignment.bottomCenter,
                                 ),
                                 borderRadius: BorderRadius.circular(7.0),
                                   boxShadow: [BoxShadow(
                                     color: Colors.grey,
                                     blurRadius: 5.0,
                                   ),]
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: <Widget>[

                                   SizedBox(
                                     height: 10,
                                   ),

                                   Text("4.5",
                                     textAlign: TextAlign.left,
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 21,
                                         fontWeight: FontWeight.bold
                                     ),),
                                   SizedBox(
                                     height: 6,
                                   ),
                                   Text("TOTAL STORIES",
                                     textAlign: TextAlign.left,
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 13,
                                     ),),
                                   SizedBox(
                                     height: 6,
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text("   View Details",
                                         style: TextStyle(
                                           color: Color(0xffFFB800),
                                           fontSize: 12,
                                           fontWeight: FontWeight.bold
                                         ),),

                                       Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffFFB800),size: 20,)

                                     ],
                                   ),
                                 ],
                               ),
                             ),
                           ),
                        // ],
                      // ),
                     );
                   },
                 )
             ),

             Padding(
               padding: const EdgeInsets.only(top: 5.0),
               child: SizedBox(
                 width: MediaQuery.of(context).size.width,
                 height: 270,
                 child: PageView.builder(
                     itemCount: images.length,
                     pageSnapping: true,
                     controller: _pageController,
                     onPageChanged: (page) {
                       setState(() {
                         activePage = page;
                       });
                     },
                     itemBuilder: (context, pagePosition) {
                       return Container(
                         margin: EdgeInsets.all(10),
                         child: Container(
                             decoration: BoxDecoration(
                               gradient: LinearGradient(
                                 colors: [
                                   const Color(0xFFFFDB43),
                                   const Color(0xFFF6F5F3),
                                 ],
                                 begin: Alignment.topCenter,
                                 end: Alignment.bottomCenter,
                               ),
                               borderRadius: BorderRadius.circular(14)
                             ),
                            height: 300,
                             child: Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(12.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width,
                                     height: 160,
                                     child: ClipRRect(
                                         borderRadius: BorderRadius.circular(10),
                                         child: Image.asset(images[pagePosition],fit: BoxFit.cover,)
                                     ),
                                   ),
                                 ),

                                 Center(
                                   child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                     child: Text("What Shakti Kapoor Said On Son's Detention After Drug Raid: Report",
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                         fontSize: 13
                                       ),
                                     ),
                                   ),
                                 )
                               ],
                             )),
                       );
                     }),
               ),
             )
           ],
         ),
       ),
     );
  }
}