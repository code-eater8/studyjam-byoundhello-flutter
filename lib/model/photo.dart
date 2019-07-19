import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class Photo {
    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    Photo({
        this.albumId,
        this.id,
        this.title,
        this.url,
        this.thumbnailUrl,
    });

    factory Photo.fromJson(Map<String, dynamic> json) => new Photo(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}


Future<List<Photo>> fetchData ()async{
    final response =
        await http.get('http://jsonplaceholder.typicode.com/photos/');
    // final parsedResponse = jsonDecode(response.body);
    final responseBody = response.body;
    // final photo = Photo(
    //   albumId: parsedResponse['albumId'],
    //     id: parsedResponse['id'],
    //     title: parsedResponse['title'],
    //     url: parsedResponse['url'],
    //     thumbnailUrl: parsedResponse['thumbnailUrl']
    // );
    return compute(parsePhoto,responseBody);

}

List<Photo> parsePhoto (String responseBody){
final parsed = json.decode(responseBody).cast<Map<String,dynamic>>();
return parsed.map<Photo>((json)=> Photo.fromJson(json)).toList();
}