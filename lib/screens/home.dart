import 'package:flutter/material.dart';
import 'package:portofolio_web/models/sociallinks/urllauch.dart';
import 'package:url_launcher/url_launcher.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(100, 100),child: custom_appbar(

      ),),
      body: Container(
        padding: EdgeInsets.all(0),
          height: height/1,
          width: width/1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.red
              ]
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height/1.07,
                    width: width/2,
                    color: Colors.transparent,
                    child: Stack(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Positioned(
                          left: 10,
                          top: 100,
                          child: Text('Welcome to my portofolio!'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 26,
                            color: Colors.white
                          ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 150,
                          child: Text(
                            'Hariharan'.toUpperCase(),
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40
                          ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 200,
                          child: Text(
                            "Flutter Developer".toUpperCase(),
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16
                          ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 240,
                          //height: 50,
                          child: InkWell(
                            radius: 40,
                            
                            onTap: ()=>social_links().github_launch(),
                            child: Image(
                              height: 40.0,
                              width: 40.0,
                              color: Colors.white,
                              fit: BoxFit.fill,
                              image: AssetImage('assets/github.png'),
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height/1.07,
                    width: width/2,
                    color: Colors.transparent
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}

Widget custom_appbar(){
  return Container(
    padding: EdgeInsets.all(10),
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text('H',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: (){},
            child: Text('Home',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            )),
            FlatButton(
            onPressed: (){},
            child: Text('Services',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            )),
            FlatButton(
            onPressed: (){},
            child: Text('Projects',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            )),
            FlatButton(
            onPressed: (){},
            child: Text('About',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            )),
            FlatButton(
            onPressed: (){},
            child: Text('Contact',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            )),
        ],
      )
    ],),
  );
}