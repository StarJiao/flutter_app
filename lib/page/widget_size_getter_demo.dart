import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetSizeGetterDemo extends StatefulWidget {
  static final String name = 'WidgetSizeGetterDemo';
  WidgetSizeGetterDemo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<WidgetSizeGetterDemo> {
  final controller = new ScrollController();
  OverlayEntry sticky;
  GlobalKey stickyKey = new GlobalKey();

  @override
  void initState() {
    if (sticky != null) {
      sticky.remove();
    }
    sticky = new OverlayEntry(
      opaque: false,
      // lambda created to help working with hot-reload
      builder: (context) => stickyBuilder(context),
    );

    // not possible inside initState
//    SchedulerBinding.instance.addPostFrameCallback((_) {});
//    super.initState();
  }

  @override
  void dispose() {
    // remove possible overlays on dispose as they would be visible even after [Navigator.push]
    sticky.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          if (index == 6) {
            return new Container(
              key: stickyKey,
              height: 100.0,
              color: Colors.green,
              child: new Text("I'm fat"),
            );
          }
          return new ListTile(
            title: new Text('Hello $index'),
          );
        },
      ),
    );
  }

  Widget stickyBuilder(BuildContext context) {
    return new AnimatedBuilder(
      animation: controller,
      builder: (_, child) {
        final keyContext = stickyKey.currentContext;
        if (keyContext != null) {
          // widget is visible
          final RenderBox box = keyContext.findRenderObject();
          final pos = box.localToGlobal(Offset.zero);
          return new Positioned(
            top: pos.dy + box.size.height,
            left: 50.0,
            right: 50.0,
            height: box.size.height,
            child: new Material(
              child: new Container(
                alignment: Alignment.center,
                color: Colors.purple,
                child: new Text("^ Nah I think you're okay"),
              ),
            ),
          );
        }
        return new Offstage();
      },
    );
  }
}
