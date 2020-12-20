import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mvp_template/core/store.dart';
import 'package:mvp_template/material_app_wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = createStore();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialAppWrap()
    );
  }
}