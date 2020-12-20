import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  AppScaffold({this.body});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.backgroundColor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: body
    );
  }
}