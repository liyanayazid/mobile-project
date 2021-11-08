import 'package:besquare_mobile_project/main.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
        elevation: 0,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
              iconSize: 40,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 40,
                color: Colors.white,
              )),
      ),
      body: Container(
        child: Column(
          children: <Widget> [
           Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                   Padding(padding: EdgeInsets.all(15),
                   child: Text('Title:'),
                   ),
                   Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
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
                                // hintText: "Enter title",
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   Padding(padding: EdgeInsets.all(15),
                   child: Text('Decription:'),
                   ),
                   Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                              
                              )
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(50),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                // hintText: "Enter text",
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                 Padding(padding: EdgeInsets.all(15),
                   child: Text('Image URL:'),
                   ),
                   Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
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
                                // hintText: "Paste image URL",
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 150,
                    child: Center(
                      child: ElevatedButton(
                        child: Text("Create post"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomePage()),    
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(143, 148, 251, 1),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 18),
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