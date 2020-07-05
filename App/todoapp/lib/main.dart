import 'package:flutter/material.dart';
import 'UI/Intray/Intray_page.dart';
import 'models/globarl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo App',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: "Todo App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [

                  IntrayPage(),
                  new Container(
                    color: Colors.orange,
                  ),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 50,
                ),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Interay",
                      style: inrayTitleStyle,
                    ),
                    Container(),
                  ],
                ),
              ),
              Container(
                height:80,
                width:80,
                margin: EdgeInsets.only(top:110 , left: MediaQuery.of(context).size.width * 0.4 ),
                child: FloatingActionButton(
                child:Container( 
                  
                child: Icon(Icons.add ,size: 60,),
                height: 100,
                width: 100,
                 ),
                backgroundColor: redColor,
                onPressed: () {},
                ),
              ),
            ]),
            appBar: new AppBar(
              elevation: 0,
              title: TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                    
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
