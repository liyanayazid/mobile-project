// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewPostRoute extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final DetailPost;

  // ignore: prefer_const_constructors_in_immutables, duplicate_ignore
  ViewPostRoute(
      {Key? key,required this.DetailPost,}): super(key: key);

  @override
  _ViewPostRouteState createState() => _ViewPostRouteState();
}

class _ViewPostRouteState extends State<ViewPostRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.DetailPost['title']),
      ),
      body: 
      SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child:           SizedBox(
            width: 200,
            height: 200,
            child:
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: 
              Align(
                alignment: Alignment.topCenter,
                child: Image.network(
                  "${widget.DetailPost["image"]}",
                    errorBuilder: (_1, _2, _3) {
                    return const SizedBox.shrink();}, 
                fit: BoxFit.fill),
              )),
          ),),
            
              // ignore: avoid_unnecessary_containers
          Container(
              child:
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.expand(height: 400, width: 400),
                    child: 
                    Column(
                      children: <Widget>[

                        Text('${widget.DetailPost['title']}',
                        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.deepPurple)),

                        Text('${widget.DetailPost['author']}',
                        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.deepPurple),),

                        Text('${widget.DetailPost['description']}',
                        style: const TextStyle(fontSize: 16)),

                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Text('${widget.DetailPost['date']}',
                          style: const TextStyle(fontSize: 15,)),)
                    
                  ],
                ),
              ),
            ),
          )
        ],
      ),),
    ),
  );
}
}