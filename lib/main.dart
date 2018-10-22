import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
        theme:new ThemeData(
          primarySwatch:Colors.blue
        )
    );
  }
}

class LoginPage extends StatefulWidget{

  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync:this,
      duration: new Duration(milliseconds: 300)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeOut
    );
    _iconAnimation.addListener(() => this.setState((){})); 
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor:Colors.greenAccent,
      body: new Stack(
        fit:StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/back.png"),
            fit:BoxFit.cover,
            color:Colors.black87,
            colorBlendMode: BlendMode.darken
            
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size:_iconAnimation.value * 100, 
              ),
              new Form (
                child: new Theme(
                  data: new ThemeData(
                    brightness:Brightness.dark,
                    primarySwatch:Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle:new TextStyle(
                        color:Colors.teal,
                        fontSize:20.0
                      )
                    )
                  ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment:CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration:new InputDecoration(
                            labelText:"Enter Email"
                          ),
                          keyboardType:TextInputType.emailAddress
                        ),
                          new TextFormField(
                          decoration:new InputDecoration(
                            labelText:"Enter password"
                          ),
                          keyboardType:TextInputType.text,
                          obscureText:true
                        ),
                        new Padding(
                          padding:const EdgeInsets.all(10.0)
                        ),
                        new MaterialButton(
                          color:Colors.teal,
                          textColor:Colors.white,
                          child:new Text(
                            "Login"
                          ),
                          onPressed: ()=>{},

                        )
                      ],
                  ),
                    ),
                )
                )
            ],
            )
        ],
      )
    );
  }
}














































// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: "My App",
//       home: new HomePage(),
//       theme: new ThemeData(
//         primarySwatch:Colors.green,
//         brightness:Brightness.light,
//         accentColor:Colors.red
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() =>new  _HomePageState();
// }




// class _HomePageState extends State<HomePage> {

// String myText ="Hello world";
// void _changeText() {
//   setState(() {
//     if(myText.startsWith("H")){
//       myText = "Welcome to My App";
//   }else{
//     myText = "Hello world";
//   }
//     });
// }

//   Widget _bodyWidget() {
//   return new Container(
//  padding: const EdgeInsets.all(20.0),
//  child:new Center(
//    child: new Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children:<Widget>[
//        new Text(myText,style: new TextStyle(
//         fontSize:22.0
//        ),),
  
//      ]
//    )
//  )
//   );
// }
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Home Page")
//       ),
//       body: _bodyWidget(),
//       floatingActionButton: new FloatingActionButton(
//         child: new Icon(Icons.add),
//         onPressed: _changeText,
//       ),
//     );
//   }
// }