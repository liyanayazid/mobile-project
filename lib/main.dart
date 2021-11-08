import 'package:flutter/material.dart';
import 'package:besquare_mobile_project/ViewPost.dart';
import 'package:besquare_mobile_project/Home.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

//USERNAME
class HomePage extends StatelessWidget {
  final channel = WebSocketChannel.connect(
    Uri.parse('ws://besquare-demo.herokuapp.com'),
  );
  // final _textBloc = TextBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/light-1.png'),
                        )),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 40,
                      height: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/light-2.png'),
                        )),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/clock.png'),
                        )),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter username",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 100,
                  ),
                  Container(
                    height: 80,
                    child: Center(
                      child: ElevatedButton(
                        child: Text("Login"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PostPage(channel: channel)),    
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(143, 148, 251, 1),
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 18),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}