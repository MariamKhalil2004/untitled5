import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>() ;

void goTo(Widget page, {bool canPop=true}){
  Navigator.push(navigatorKey.currentContext!, MaterialPageRoute(builder: (context)=> page ));
}