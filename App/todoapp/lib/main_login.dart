import 'package:flutter/material.dart';

//void main2222() {
  //runApp(MyApp());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;
  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 300));
    _iconAnimation = new CurvedAnimation(
        curve: Curves.easeOut, parent: _iconAnimationController);
    _iconAnimation.addListener(()=> this.setState(() {
      
    }));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: new AssetImage('assets/raja2.jpg'),
            fit: BoxFit.cover,
            color: Colors.black26,
            colorBlendMode: BlendMode.colorBurn,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0
                      )
                    )
                  ),
                child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                     TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                     TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: MaterialButton(
                        height: 40.0,
                        minWidth: 100.0,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: Text("Login"),
                        onPressed: ()=>{},
                        splashColor: Colors.redAccent,
                      ),
                    ),
                    ],
                  ),
                ),
                ),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
