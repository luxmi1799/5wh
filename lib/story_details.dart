import 'package:flutter/material.dart';

List imglist = [
  "assets/image1.png",
  "assets/image2.png",
  "assets/image3.png",
];

class story_detals extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _story_details();
  }
}

class _story_details extends State<story_detals> {
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
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
               child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Showcasing art works at Brahmaputra heritage centre",style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     fontFamily: "poppins",
                   ),)),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: 80,
                     height: 30,
                     decoration: BoxDecoration(
                         color: Color(0xffFFDB43),
                         borderRadius: BorderRadius.circular(5)
                     ),
                     child: Center(
                       child: Text("Art & Design",style: TextStyle(
                           fontFamily: "poppins",
                           color: Colors.black,
                           fontSize: 11,
                           fontWeight: FontWeight.bold
                       ),),
                     ),
                   ),

                   SizedBox(
                     width: 60,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 15.0),
                     child: Text("₹ 2430",style: TextStyle(
                         fontFamily: "poppins",
                         color: Color(0xff0923AA),
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                     ),),
                   ),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
               child: Row(
                 children: [
                   RichText(
                     text:TextSpan(
                         children:[
                           WidgetSpan(
                             child: Padding(
                               padding: EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
                               child: CircleAvatar(
                                 radius:5,
                                 backgroundColor:Color(0xffFFDB43),
                               ),
                             ),
                           ),
                           TextSpan(
                             text:" English",
                             style:TextStyle(
                                 color:Colors.black,
                                 fontSize: 14
                             ),
                           ),
                         ]
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(left: 15.0),
                     child: RichText(
                       text:TextSpan(
                           children:[
                             WidgetSpan(
                               child: Padding(
                                 padding: EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
                                 child: CircleAvatar(
                                   radius:5,
                                   backgroundColor:Color(0xffFFDB43),
                                 ),
                               ),
                             ),
                             TextSpan(
                               text:" Jun 5, 2022",
                               style:TextStyle(
                                   color:Colors.black,
                                   fontSize: 14
                               ),
                             ),
                           ]
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: RichText(
                       text:TextSpan(
                           children:[
                             WidgetSpan(
                               child: Padding(
                                 padding: EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
                                 child: CircleAvatar(
                                   radius:5,
                                   backgroundColor:Color(0xffFFDB43),
                                 ),
                               ),
                             ),
                             TextSpan(
                               text:" Guwahati",
                               style:TextStyle(
                                   color:Colors.black,
                                   fontSize: 14
                               ),
                             ),
                           ]
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
               child: SizedBox(
                 width: MediaQuery.of(context).size.width,
                 child: Text(
                   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                       "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                   style: TextStyle(
                     fontSize: 14,
                     fontFamily: "poppins",
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
               child: Row(
                 children: [
                   RichText(
                     text:TextSpan(
                         children:[
                           WidgetSpan(
                             child: Padding(
                               padding: EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
                               child: CircleAvatar(
                                 radius:5,
                                 backgroundColor:Color(0xffFFDB43),
                               ),
                             ),
                           ),
                           TextSpan(
                             text:"#Breaking News",
                             style:TextStyle(
                                 color:Colors.black,
                                 fontSize: 14
                             ),
                           ),
                         ]
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(left: 25.0),
                     child: RichText(
                       text:TextSpan(
                           children:[
                             WidgetSpan(
                               child: Padding(
                                 padding: EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
                                 child: CircleAvatar(
                                   radius:5,
                                   backgroundColor:Color(0xffFFDB43),
                                 ),
                               ),
                             ),
                             TextSpan(
                               text:" #Elections",
                               style:TextStyle(
                                   color:Colors.black,
                                   fontSize: 14
                               ),
                             ),
                           ]
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25),
                     child: RichText(
                       text:TextSpan(
                           children:[
                             WidgetSpan(
                               child: Padding(
                                 padding: EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
                                 child: CircleAvatar(
                                   radius:5,
                                   backgroundColor:Color(0xffFFDB43),
                                 ),
                               ),
                             ),
                             TextSpan(
                               text:" #Photo",
                               style:TextStyle(
                                   color:Colors.black,
                                   fontSize: 14
                               ),
                             ),
                           ]
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
               child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Images",style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     fontFamily: "poppins",
                   ),)),
             ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
               // Center is a layout widget. It takes a single child and positions it
               // in the middle of the parent.
               child: Container(
                 height: 200,
                 child: ListView.builder(
                     physics: ScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                     itemCount: 3,
                     // itemExtent: 110.0,
                     shrinkWrap: true,
                     itemBuilder: (context,index){
                       return InkWell(
                           onTap: (){

                           },
                           child: picture_list(context,index));
                     }),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
               child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Videos",style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     fontFamily: "poppins",
                   ),)),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
               // Center is a layout widget. It takes a single child and positions it
               // in the middle of the parent.
               child: Container(
                 height: 200,
                 child: ListView.builder(
                     physics: ScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                     itemCount: 3,
                     // itemExtent: 110.0,
                     shrinkWrap: true,
                     itemBuilder: (context,index){
                       return InkWell(
                           onTap: (){

                           },
                           child: video_list(context,index));
                     }),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
               child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Audios",style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     fontFamily: "poppins",
                   ),)),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
               // Center is a layout widget. It takes a single child and positions it
               // in the middle of the parent.
               child: Container(
                 height: 150,
                 child: ListView.builder(
                     physics: ScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                     itemCount: 3,
                     // itemExtent: 110.0,
                     shrinkWrap: true,
                     itemBuilder: (context,index){
                       return InkWell(
                           onTap: (){

                           },
                           child: audio_list(context,index));
                     }),
               ),
             ),
           ],
         ),
       ),
     );
  }

  Widget picture_list(BuildContext context,int pos){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imglist[pos]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Widget video_list(BuildContext context,int pos){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imglist[pos]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black.withOpacity(.33),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/videobtn.png",width: 50,height: 50,)
            ],
          ),
        ),
      ),
    );
  }

  Widget audio_list(BuildContext context,int pos){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.80),
          borderRadius: BorderRadius.circular(12),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mic,size: 50,color: Color(0xffFFDB43),)
              //Image.asset("assets/audio.png",width: 50,height: 50,)
            ],
          ),

      ),
    );
  }
}