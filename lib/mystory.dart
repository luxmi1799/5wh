import 'package:flutter/material.dart';
import 'package:wh_app/story_details.dart';

class mystory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _mystory();
  }
}

class _mystory extends State<mystory> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.transparent,
       appBar: AppBar(
         centerTitle: true,
         title: Text("My Story",style: TextStyle(
             fontSize: 24,
             fontFamily: 'poppins',
             color: Colors.black,
             fontWeight: FontWeight.bold
         ),),
         // leadingWidth: 10, //
         leading: Icon(Icons.arrow_back),
         backgroundColor: Colors.transparent,
         elevation: 0.0,
       ),

       body: SingleChildScrollView(
         child: Column(
           children: [

             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                  height:50,
                 child: TextField(
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20)
                     ),
                     hintText: 'Search',
                   ),
                 ),
               ),
             ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 10),
               // Center is a layout widget. It takes a single child and positions it
               // in the middle of the parent.
               child: ListView.builder(
                   physics: ScrollPhysics(),
                   scrollDirection: Axis.vertical,
                   itemCount: 5,
                  // itemExtent: 110.0,
                   shrinkWrap: true,
                   itemBuilder: (context,index){
                     return InkWell(
                         onTap: (){

                         },
                         child: mystory_list());
                   }),
             ),
           ],
         ),
       ),
     );
  }

  Widget mystory_list() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
        child:Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/story.png",width: MediaQuery.of(context).size.width*0.32,height: 100,fit: BoxFit.cover,)),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Expanded(
                            child: Text("₹ 100",style: TextStyle(
                                fontFamily: "poppins",
                                color: Color(0xffFFDB43),
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 2),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *0.45,
                        child: Expanded(
                          child: Text("Showcasing art works at Brahmaputra heritage centre",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "poppins",
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text:TextSpan(
                              children:[
                                WidgetSpan(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical:3.0,),
                                    child: CircleAvatar(
                                      radius:4,
                                      backgroundColor:Color(0xffFFDB43),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text:" English",
                                  style:TextStyle(
                                      color:Colors.black,
                                      fontSize: 10
                                  ),
                                ),
                              ]
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: RichText(
                            text:TextSpan(
                                children:[
                                  WidgetSpan(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical:3.0,),
                                      child: CircleAvatar(
                                        radius:4,
                                        backgroundColor:Color(0xffFFDB43),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text:" Jun 5, 2022",
                                    style:TextStyle(
                                        color:Colors.black,
                                        fontSize: 10
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Expanded(
                            child: RichText(
                              text:TextSpan(
                                  children:[
                                    WidgetSpan(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical:3.0,),
                                        child: CircleAvatar(
                                          radius:4,
                                          backgroundColor:Color(0xffFFDB43),
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text:" Guwahati",
                                      style:TextStyle(
                                          color:Colors.black,
                                          fontSize: 10
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1.5,
                color: Color(0xffFFDB43),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 5.0,bottom: 5,left: 5,right: MediaQuery.of(context).size.width*0.1),
                  child: Row(
                    children: [
                      Image.asset("assets/likep.png",width: 40,height: 40,fit: BoxFit.cover,),
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.15,
                          child: Text("Shyam Harichakra",style: TextStyle(
                              fontSize: 10,
                              fontFamily: "poppins"
                          ),))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 38,
                      height: 20,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFFFFDB43),
                              const Color(0xFFF5EBAF),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child:  RichText(
                          text:TextSpan(
                              children:[
                                WidgetSpan(
                                    child: Icon(Icons.folder_copy_outlined,color: Colors.black,size: 13,)
                                ),
                                TextSpan(
                                  text:" 05",
                                  style:TextStyle(
                                      color:Colors.black,
                                      fontSize: 10
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        width: 38,
                        height: 20,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFFDB43),
                                const Color(0xFFF5EBAF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child:  RichText(
                            text:TextSpan(
                                children:[
                                  WidgetSpan(
                                      child: Icon(Icons.people_outline,color: Colors.black,size: 13,)
                                  ),
                                  TextSpan(
                                    text:" 05",
                                    style:TextStyle(
                                        color:Colors.black,
                                        fontSize: 10
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        width: 38,
                        height: 20,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFFDB43),
                                const Color(0xFFF5EBAF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child:  RichText(
                            text:TextSpan(
                                children:[
                                  WidgetSpan(
                                      child: Icon(Icons.cases_outlined,color: Colors.black,size: 13,)
                                  ),
                                  TextSpan(
                                    text:" 05",
                                    style:TextStyle(
                                        color:Colors.black,
                                        fontSize: 10
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        width: 38,
                        height: 20,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFFDB43),
                                const Color(0xFFF5EBAF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child:  RichText(
                            text:TextSpan(
                                children:[
                                  WidgetSpan(
                                      child: Icon(Icons.watch,color: Colors.black,size: 13,)
                                  ),
                                  TextSpan(
                                    text:" 05",
                                    style:TextStyle(
                                        color:Colors.black,
                                        fontSize: 10
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Row(
               // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Icon(Icons.thumb_up,color: Color(0xff21AE2F),size: 19,),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => story_detals()));
                        },
                        child: Expanded(
                          child: Text("Show more",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "poppins",
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}