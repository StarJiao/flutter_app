import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/generated/i18n.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).common_key),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(S.of(context).key_only_english),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(S.of(context).common_key),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(S.of(context).variable("one", "another")),
            ),
          ],
        ),
      ),
    );
  }
}
