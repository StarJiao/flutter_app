import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/generated/i18n.dart';

class UnknownPage extends StatelessWidget {
  final String name;
  UnknownPage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).common_title),
      ),
      body: Center(
        child: Text(S.of(context).unknown_page_content(name)),
      ),
    );
  }
}
