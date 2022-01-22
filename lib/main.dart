import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _switch = false;
  ThemeData dark=ThemeData(brightness: Brightness.dark);
  ThemeData light=ThemeData(brightness: Brightness.light);
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch?dark:light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark & Light',style: const TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold
          ),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
Image.network('https://cdn.pixabay.com/photo/2019/09/29/22/06/light-bulb-4514505_960_720.jpg'),
              Icon(Icons.lightbulb_outlined,size: 70,color:Colors.yellow,),
              SizedBox(height: 40,),
              Text('Switch: OFF/ON',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Switch(value: _switch, onChanged: (_newvalue){
                setState(() {
                  _switch=_newvalue;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
