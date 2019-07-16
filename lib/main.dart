import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.8)
            ),
            clipper: getClipper(),
          ),
          Positioned(
              width: 350.0, //TODO: Make it look better
            top: MediaQuery.of(context).size.height/5,
            child:Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(75.0)
                    ),
                      boxShadow: [
                        BoxShadow(blurRadius: 7.0,
                            color: Colors.black,
                            spreadRadius: 5.0) //Try changing spread
                      ]
                  ),
                ),
                SizedBox(height: 50.0),
                Text(
                  'Flutter',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DMSerifDisplay'
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'An app for Android, iOS and Web ',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'DMSerifDisplay'
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 50.0,
                  width: 110.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Edit Name',
                            style: TextStyle(color: Colors.white,
                                fontFamily: 'DMSerifDisplay', fontSize: 16),
                          ),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 50.0,
                  width: 110.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.white,
                                fontFamily: 'DMSerifDisplay', fontSize: 16),
                          ),
                        )
                    ),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2.0);
    path.lineTo(size.width + 335, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}
