import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/generated/i18n.dart';
import 'package:flutter_app/page/page_home.dart';
import 'package:flutter_app/page/url_launcher.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<LocalizationsDelegate<dynamic>> list = List<LocalizationsDelegate>.of([S.delegate]); //插件生成的装备自定义的多语言支持控件
    list.add(GlobalMaterialLocalizations.delegate); //要支持多种语言的material控件，至少要有这个，supportedLocales添加要支持的
    list.add(DefaultMaterialLocalizations.delegate); //如果只支持默认，也至少要添加这个，同时supportedLocales只要添加en
//    list.add(GlobalWidgetsLocalizations.delegate);//可选
//    list.add(DefaultWidgetsLocalizations.delegate);//可选
//    list.add(DefaultCupertinoLocalizations.delegate);//可选
    return MaterialApp(
      localizationsDelegates: list,
      supportedLocales: S.delegate.supportedLocales,
      title: 'DemoAppHome',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/signup': (BuildContext context) => Launcher(),
      },
    );
  }
}
