import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wh_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
        fontFamily: 'poppins',
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with TickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    // new Future.delayed(
    //     const Duration(seconds: 3),
    //         () => Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => login()),
    //     ));
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                        'assets/halfcircle.png',
                        width:MediaQuery.of(context).size.width * 0.85,
                        height: 400,
                        fit: BoxFit.cover),
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.8,
                    right: -20,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                          'assets/bottombg1.png',
                          width:250,
                          fit: BoxFit.cover),
                    ),
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.7,
                    right: -10,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                          'assets/bottombg2.png',
                          width:100,
                          fit: BoxFit.cover),
                    ),
                  )

                ]),
              ],
            )
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/miniglobe.png",width: 100,height: 100,) ,
                  Text("5WH",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ],
              ),

            Center(
            child:  Lottie.asset(
              'assets/globe.json',
              width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward().whenComplete(() => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  ));
              },
              ),
            ),
            ],
          ),
        ),
      ],
    );
  }
}
