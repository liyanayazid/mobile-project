
import 'package:besquare_mobile_project/CreatePost.dart';
import 'package:besquare_mobile_project/ViewPost.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:project/CreatePost.dart';
import 'dart:convert';
// ignore: unused_import
import 'package:web_socket_channel/io.dart';
// ignore: unused_import 
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

// ignore: must_be_immutable
class PostPage extends StatefulWidget {
  PostPage({required this.channel, Key? key}) : super(key: key);
  WebSocketChannel channel;

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List savedPost = [];

  late WebSocketChannel channel;
 
  void _getPosts() {
    widget.channel.sink.add('{"type": "get_posts"}');
  }

  // void _deletePost() {
  //   widget.channel.sink.add('{"type": "delete_post"}');
  // }

  @override
  void dispose() {
    super.dispose();
  }

  dynamic decodedPost;
  dynamic deletedPost;
  
  // ignore: non_constant_identifier_names
  List ListPost = [];

  initState() {
    super.initState();
    widget.channel.stream.listen((results) {
      decodedPost = jsonDecode(results);
      if (decodedPost['type'] == 'all_posts') {
        ListPost = decodedPost['data']['posts'];
      }
      setState(() {});
    });
    _getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
        
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          title: const Text('Posts'),
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
          actions: <Widget>[
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.post_add_rounded,
                    color: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CreatePost(channel: channel,)),
                                   
                                    
                          );
                  },
                ),
                IconButton(
                    color: Colors.pink,
                    iconSize: 30,
                    onPressed: () {
                      // pushToFavoritePostRoute(context);
                    },
                    icon: const Icon(Icons.favorite, color: Colors.white,)),
                   
              ],
            )
          ],
        ),
      ),
      body: SafeArea
      (child: 
      ListView.builder(
        itemCount: ListPost.length,
        itemBuilder: (context, index) {
          bool isSaved = savedPost.contains(ListPost[index]);
          return GestureDetector(
            onTap: () {
              Navigator.push(
              context,
                MaterialPageRoute(
                builder: (context) =>
                      ViewPostRoute(DetailPost: ListPost[index]),
                ), 
                );
                },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        //image
                        Container(
                          width: 107,
                          height:106,
                            margin: const EdgeInsets.only(right: 20, left: 10),
                            child: Center(
                                child: Image.network(
                                    '${ListPost[index]["image"]}',
                                    errorBuilder: (_1, _2, _3) => const SizedBox.shrink()))),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                ListPost[index]["author"],
                                style: const TextStyle(fontSize: 18, color: Colors.deepPurple),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 13, 0, 13),
                                  child: Text(
                                    ListPost[index]["date"],
                                    style: const TextStyle(fontSize: 15),
                                  )),
                              Text("${ListPost[index]["description"]}")
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                  color: isSaved ? Colors.red : Colors.grey[350],
                                  iconSize: 20,
                                  onPressed: () {
                                    setState(() {
                                      if (isSaved) {
                                        savedPost.remove(ListPost[index]);
                                      } else {
                                        savedPost.add(ListPost[index]);
                                      }
                                    });
                                  },
                                  icon: const Icon(Icons.favorite)
                                  ),
                                  IconButton(
                                  color: Colors.grey,
                                  iconSize: 20,
                                  onPressed: () {
                                    setState(() {
                                      if (isSaved) {
                                        deletedPost.remove(ListPost[index]);
                                      } else {
                                        deletedPost.add(ListPost[index]);
                                      }
                                    });
                                  },
                                  icon: const Icon(Icons.delete)
                                  ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
          ),
          );
            //END CARD
        },
      ),
      ),
      //      floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   //crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       onPressed: () {
      //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreatePost()),
      //     // );
      //   },
      //   child: const Icon(Icons.add),
      //   backgroundColor: const Color.fromRGBO(49, 39, 79, 1), 
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  // Future pushToFavoritePostRoute(BuildContext context) {
  //   return Navigator.push(context, MaterialPageRoute(builder: (context)=> CreatePost()),
  //                         );
  // }
}