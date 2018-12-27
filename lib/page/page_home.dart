import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/generated/i18n.dart';
import 'package:flutter_app/main/pages.dart';

class HomePage extends StatelessWidget {
  final List<String> items = pages.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).common_title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                    child: Text(items[index]),
                    onPressed: () {
                      Navigator.pushNamed(context, items[index]);
                    }),
              );
            }));
  }
}
