import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: _launchURL,
          child: new Text('Show Flutter homepage'),
        ),
      ),
    );
  }

  _launchURL() async {
//    const url = 'https://flutter.io';
    const url = 'mailto:<jiaomingxing@conew.com>';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
