//在build函数之后才能执行，构造函数和initState函数执行时候Widget的大小还没确定
import 'package:flutter/material.dart';

Size getSize(GlobalKey key) => (key.currentContext.findRenderObject() as RenderBox).size;

Offset getPosition(GlobalKey key) => (key.currentContext.findRenderObject() as RenderBox).localToGlobal(Offset.zero);
