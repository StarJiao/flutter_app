import 'package:flutter/material.dart';

void main() {
  runApp(FadeAppTest());
}

class FadeAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fade App",
      theme: ThemeData.dark(),
      home: FadeTest(title: 'Fade Demo'),
    );
  }
}

class FadeTest extends StatefulWidget {
  final String title;

  FadeTest({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FadeTestState();
}

class _FadeTestState extends State<FadeTest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            child: FadeTransition(
                opacity: curve,
                child: FlutterLogo(
                  size: 100.0,
                ))),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.forward();
      }),
    );
  }
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default value for toggle
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return MaterialButton(onPressed: () {}, child: Text('Toggle Two'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
