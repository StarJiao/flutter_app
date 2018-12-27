import 'dart:convert';
import 'dart:io';

import 'package:youtube_extractor/youtube_extractor.dart';

var httpClient = new HttpClient();
var extractor = YouTubeExtractor();

String buildThumbUrlById(String id) {
  return "http://img.youtube.com/vi/$id/0.jpg";
//  return "https://i.ytimg.com/vi/$id/maxresdefault.jpg";
//  return "http://i3.ytimg.com/vi/$id/hqdefault.jpg";
}

Future<String> fetchUrl(String id) async {
  print("start fetch media url");
  var info = await extractor.getMediaStreamsAsync(id);
  print("media url:  " + info.muxed.first.url);
  return info.muxed.first.url;
}

Future<String> getTitleById(String id) async {
  int start = DateTime.now().millisecondsSinceEpoch;
  String title = 'Loading\n';
  String url = 'https://www.youtube.com/oembed?url=http://youtube.com/watch?v=$id&format=json';
  var request = await httpClient.getUrl(Uri.parse(url));
  var response = await request.close();
  if (response.statusCode == HttpStatus.ok) {
    var responseBody = await response.transform(utf8.decoder).join();
    Map data = json.decode(responseBody);
    if (data.containsKey('title')) {
      title = data['title'];
    }
  }
  print("timecost: ${DateTime.now().millisecondsSinceEpoch - start}");
  print("Title:$title");
  return title;
}

///youtube ids
List<String> ids = ['YfrW2D766YA', '5nI2i84hZP0', 'ma7r2HGqwXs', 'T4SimnaiktU'];
