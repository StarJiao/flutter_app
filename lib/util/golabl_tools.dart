import 'package:event_bus/event_bus.dart';
import 'package:flutter/foundation.dart';

EventBus eventBus = new EventBus();

DebugPrintCallback printD = debugPrintThrottled;
