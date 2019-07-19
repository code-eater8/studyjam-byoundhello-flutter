import 'dart:convert';
import 'dart:math';

import 'package:beyoundhelloworld/model/photo.dart';
import 'package:beyoundhelloworld/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final List<String> myList = [];

  // final List<String> myList = [
  //     'https://picsum.photos/id/900/800/800',
  //     'https://picsum.photos/id/800/800/800',
  //     'https://picsum.photos/id/700/800/800',
  //     'https://picsum.photos/id/600/800/800',
  //     'https://picsum.photos/id/500/800/800',
  //     'https://picsum.photos/id/400/800/800',
  //     'https://picsum.photos/id/300/800/800',
  //     'https://picsum.photos/id/200/800/800',
  //     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("home screen title"),
      ),
      body: Center(
        child: myList.length >0 ? Container(
         width: MediaQuery.of(context).size.width*0.9,
          child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (BuildContext context, int index) {
            return _buildMyList(myList[index]);
          },),
        ): CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: ()=> _addphoto(),
      ),
    );
  }

  _addphoto ()async{

    final num = Random().nextInt(1000);
    final response =
        await http.get('http://jsonplaceholder.typicode.com/photos/$num');
    final parsedResponse = jsonDecode(response.body);
    final photo = Photo(
      albumId: parsedResponse['albumId'],
        id: parsedResponse['id'],
        title: parsedResponse['title'],
        url: parsedResponse['url'],
        thumbnailUrl: parsedResponse['thumbnailUrl']
    );
    setState(() {
      myList.add(parsedResponse['url']);
    });

    print(response.body);
    
  }
  Widget _buildMyList (String img){
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Card(
        child: Image.network(img),
      ),
    );
  }
}