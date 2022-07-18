import 'package:flutter/material.dart';
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => login()),
        ));
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Center(

        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/halfcircle.png",width: 330,height: 390,),
                ),
                Positioned(
                    top: 70,
                     right: 40,
                      child: Column(
                        children: [
                          Row(
                            children: [
                             Image.asset("assets/miniglobe.png",width: 100,height: 100,) ,
                              Text("5WH",style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                           Text("We're Rethinking \n     Journalism",style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),

                        ],
                      ),
                    ),
              ],
            ),

          ],
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
