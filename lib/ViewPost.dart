
// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' as rootBundle;
// import 'package:web_socket_channel/web_socket_channel.dart';



// // ignore: must_be_immutable
// class ViewPost extends StatefulWidget {

//   @override
//     _ViewPostState createState() => _ViewPostState();
// }

// class _ViewPostState extends State<ViewPost> {


//   @override
//   Widget build(BuildContext context) {
//         return Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(143, 148, 251, 1),
//           title: Text('Hello???'),
//         ),

//         //BODY
//         body: ListView.builder(
//           itemCount: messageList.length,
//           itemBuilder: (context, index) {
           
//             return Card(
//               elevation: 5,
//               margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.only(bottom: 8),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           //start
//                           Padding(
//                             padding: EdgeInsets.only(
//                                 left: 20, right: 8, bottom: 15, top: 15),
//                             child: Row(children: [
//                               Text(
//                                 messageList[index]["author"],
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.deepPurple),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   padding: EdgeInsets.only(left: 290),
//                                   child: Text(
//                                     messageList[index]["date"],
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                       color: Colors.blueGrey,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ]),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 10),
//                             child: Image(
//                               image: NetworkImage(
//                                   '${messageList[index]["image"]}'),
//                             ),
//                           ),

//                           Padding(
//                             padding:
//                                 EdgeInsets.only(left: 20, right: 8, top: 15),
//                             child: Text(
//                               messageList[index]['description'],
//                                style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsets.only(left: 410, top: 3, bottom: 5),
//                             child: IconButton(
//                               icon: Icon(Icons.favorite_border),
//                               iconSize: 30,
//                               onPressed: null,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         )
//         );
//   }
// }
