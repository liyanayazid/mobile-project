// RETURN CARD(
//               elevation: 5,
//               margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                 //   mainAxisAlignment: MainAxisAlignment.center,
//                 //  crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Expanded(child: Container(
//                       padding: EdgeInsets.only(bottom: 8),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 20, right: 8, bottom: 15, top: 15),
//                             child: Row(
//                               children: <Widget>[
//                               Text(
//                                  ListPost[index]["author"],
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.deepPurple
//                                     ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   padding: EdgeInsets.only(left: 290),
//                                   child: Text(
//                                     ListPost[index]["date"],
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                       color: Colors.blueGrey,
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                             ),
//                             )
//                         ],
//                     )
//                     ),),
//                     SizedBox(
//                       width: 67,
//                       height: 65,
                      
//                       //padding: EdgeInsets.only(left: 10),
//                        child: Image.network(
//                                     '${ListPost[index]["image"]}',
//                                     errorBuilder: (_1, _2, _3) => const SizedBox.shrink(),
//                                     fit: BoxFit.fill,),
//                     ),
//                     Padding(padding: EdgeInsets.only(left: 20, right: 8, top: 15),
//                     child: Text("${ListPost[index]["description"]}",
//                     style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     ),
//                     Padding(padding:  EdgeInsets.only(left: 410, top: 3, bottom: 5),
//                     child: Row(
                    
//                      children: [
//                               IconButton(               
//                                   color: isSaved ? Colors.red : Colors.black,
//                                   iconSize: 20,
//                                   onPressed: () {
//                                     setState(() {
//                                       if (isSaved) {
//                                         savedPost.remove(ListPost[index]);
//                                       } else {
//                                         savedPost.add(ListPost[index]);
//                                       }
//                                     });
//                                   },
//                                   icon: const Icon(Icons.favorite)
//                                   ),
//                                   IconButton(
//                                   color: Colors.black,
//                                   iconSize: 20,
//                                   onPressed: () {
//                                     setState(() {
//                                       if (isSaved) {
//                                         deletedPost.remove(ListPost[index]);
//                                       } else {
//                                         deletedPost.add(ListPost[index]);
//                                       }
//                                     });
//                                   },
//                                   icon: const Icon(Icons.delete)
//                                   ),
//                             ],
//                     ),),
//                     ///rusy punya
//                     // Row(
//                     //   children: <Widget>[
//                     //     //image
//                     //     Container(
//                     //         margin: const EdgeInsets.only(right: 20, left: 10),
//                     //         child: Center(
//                     //             child: Image.network(
//                     //                 '${ListPost[index]["image"]}',
//                     //                 errorBuilder: (_1, _2, _3) => const SizedBox.shrink())
//                     //                 )),
//                     //     Expanded(
//                     //       child: Column(
//                     //         crossAxisAlignment: CrossAxisAlignment.start,
//                     //         children: <Widget>[
//                     //           Text(
//                     //             ListPost[index]["author"],
//                     //             style: const TextStyle(fontSize: 23),
//                     //           ),
//                     //           Container(
//                     //               margin:
//                     //                   const EdgeInsets.fromLTRB(0, 13, 0, 13),
//                     //               child: Text(
//                     //                 ListPost[index]["date"],
//                     //                 style: const TextStyle(fontSize: 15),
//                     //               )),
//                     //           Text("${ListPost[index]["description"]}")
//                     //         ],
//                     //       ),
//                     //     ),
//                     //     // ignore: avoid_unnecessary_containers
//                     //     Container(
//                     //       child: Row(
//                     //         children: [
//                     //           IconButton(               
//                     //               color: isSaved ? Colors.red : Colors.black,
//                     //               iconSize: 20,
//                     //               onPressed: () {
//                     //                 setState(() {
//                     //                   if (isSaved) {
//                     //                     savedPost.remove(ListPost[index]);
//                     //                   } else {
//                     //                     savedPost.add(ListPost[index]);
//                     //                   }
//                     //                 });
//                     //               },
//                     //               icon: const Icon(Icons.favorite)
//                     //               ),
//                     //               IconButton(
//                     //               color: Colors.black,
//                     //               iconSize: 20,
//                     //               onPressed: () {
//                     //                 setState(() {
//                     //                   if (isSaved) {
//                     //                     deletedPost.remove(ListPost[index]);
//                     //                   } else {
//                     //                     deletedPost.add(ListPost[index]);
//                     //                   }
//                     //                 });
//                     //               },
//                     //               icon: const Icon(Icons.delete)
//                     //               ),
//                     //         ],
//                     //       ),
//                     //     )
//                     //   ],
//                     // )
//                     ],
//                 ),
//               ),
            