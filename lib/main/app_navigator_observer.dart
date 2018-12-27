import 'package:flutter/widgets.dart';
import '../util/golabl_tools.dart';

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route previousRoute) {
    super.didPop(route, previousRoute);
    printD('${route?.settings?.name} didpop on ${previousRoute?.settings?.name}');
  }

  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    printD('${route?.settings?.name} didPush on ${previousRoute?.settings?.name}');
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    super.didRemove(route, previousRoute);
    printD('${route?.settings?.name} didRemove on ${previousRoute?.settings?.name}');
  }

  @override
  void didReplace({Route newRoute, Route oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    printD('${newRoute?.settings?.name} didReplace on ${oldRoute?.settings?.name}');
  }

  @override
  void didStartUserGesture(Route route, Route previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    printD('${route?.settings?.name} didStartUserGesture on ${previousRoute?.settings?.name}');
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    printD('didStopUserGesture');
  }
}
