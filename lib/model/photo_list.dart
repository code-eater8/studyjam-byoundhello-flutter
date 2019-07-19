import 'package:beyoundhelloworld/model/photo.dart';
import 'package:flutter/material.dart';

class PhotoList extends StatelessWidget {
  final List<Photo> photos;

  PhotoList({this.photos});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 400,
          height: 400,
          child: Image.network(photos[index].url));
      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
