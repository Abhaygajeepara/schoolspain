import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lista/templates/Module4.dart';
import 'package:lista/templates/Module6.dart';
import 'package:lista/templates/game_template.dart';
import 'package:lista/templates/Module1.dart';
import 'package:lista/templates/gamepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
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
        resizeToAvoidBottomPadding: false,
     // body: GameTemplate(color: Color(0xff224076),icon: "asset/Module1/pigcolorless.png",image: "asset/image/module1_background.png",name: "Cajero Automático",title: "CAJERO AUTOMÁTICO",data: "Muy bien has aprendido a manejar un cajero No dejes de practicar para el día que te toque usar uno",discription:"Los Cajeros Automáticos son máquinas dispensadoras de dinero activadas mediante una tarjeta y una clave secreta personal la cual identifica a un usuario.",gamemode: GamePage(color: Color(0xffF8CD35), icon: "asset/image/module7_atm.png",image: "asset/image/module7_background.png"),),
    //body:Module1(color: Color(0xff224076),icon: "asset/Module1/pigcolorless.png",image: "asset/image/module1_background.png")
      //body:Module6(color: Color(0xff224076),icon: "asset/Module6/module6icon.png",image: "asset/image/module4&6_background.png")
        body:Module4(color: Color(0xfff1861a),icon: "asset/Module4/heart.png",image: "asset/image/module4&6_background.png")
    );

  }
}
