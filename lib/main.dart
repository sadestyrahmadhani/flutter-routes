import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrouting/package/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}
