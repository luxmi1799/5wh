import 'package:flutter/material.dart';
import 'package:wh_app/mystory.dart';
import 'package:wh_app/story_details.dart';


List imglist = [
  "assets/image1.png",
  "assets/image2.png",
  "assets/image3.png",
];

class marketplace extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _marketplace();
  }
}

class _marketplace extends State<marketplace> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: InkWell(
                onTap: (){
                  setState(() {

                  });
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => edit_profile()));
                },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
            backgroundColor:  Colors.transparent,
            elevation: 0,
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Market Place",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"
                      )
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              children: [
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xffFFDB43),
                  ),
                  child:  TabBar(
                    indicator: BoxDecoration(
                        color: Color(0xff2d2d2d),
                    ) ,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.folder_copy_outlined,size: 17,),
                            const SizedBox(width: 2),
                            Expanded(child: Text('Storie')),
                          ],
                        ),
                      ),

                      Tab(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.picture_in_picture_sharp,size: 17,),
                            const SizedBox(width: 2),
                            Expanded(child: Text('Picture',style: TextStyle(
                              fontSize: 12
                            ),)),
                          ],
                        ),
                      ),

                      Tab(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.video_collection_sharp,size: 17,),
                            const SizedBox(width: 2),
                            Expanded(child: Text('Video',style: TextStyle(
                                fontSize: 12
                            ),)),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.mic,size: 17,),
                            const SizedBox(width: 2),
                            Expanded(child: Text('Audio',style: TextStyle(
                                fontSize: 12
                            ),)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children:  [
                        Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
                            child: mystory_list(context));
                        }),
                      ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          // Center is a layout widget. It takes a single child and positions it
                          // in the middle of the parent.
                          child: ListView.builder(
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.vertical,
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
                        Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          // Center is a layout widget. It takes a single child and positions it
                          // in the middle of the parent.
                          child: ListView.builder(
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.vertical,
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
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }

  Widget mystory_list(BuildContext context) {
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
                                color: Colors.black,
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

  Widget picture_list(BuildContext context,int pos){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
      child: Container(
            height: 240,
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
             color: Colors.black.withOpacity(.55),
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text("Paparazzi photographers and television reporters at celebrity event  - stock photo",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.white,
                     fontFamily: "poppins",
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   ),),
                 ),
               ),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 14.0,right: 14,bottom: 14),
                   child: Text("#images, #crime, #news, #trending, #media",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xffFFDB43),
                       fontFamily: "poppins",
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                     ),),
                 ),
               )
             ],
           ),
         ),
      ),
    );
  }

  Widget video_list(BuildContext context,int pos){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
      child: Container(
        height: 240,
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
            color: Colors.black.withOpacity(.55),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/videobtn.png",width: 90,height: 90,)
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
        height: 240,
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
            color: Colors.black.withOpacity(.55),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.music_video,color: Color(0xffFFDB43),size: 90,)
            ],
          ),
        ),
      ),
    );
  }

}