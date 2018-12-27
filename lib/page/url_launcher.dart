import 'package:flutter/material.dart';
import 'package:flutter_app/custom/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/util/golabl_tools.dart';

class UriLauncher extends StatelessWidget {
  static final String name = 'Uri Launcher';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(name, context),
      body: new Center(
        child: new RaisedButton(
          onPressed: _launchURI,
          child: new Text('Show Flutter homepage'),
        ),
      ),
    );
  }

  _launchURI() async {
    const url = 'https://flutter.io';
//    const url = 'mailto:<jiaomingxing@conew.com>';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Fluttertoast.showToast(msg: "can not launch this uri : $url");
    }
  }
}
