import 'package:flutter/material.dart';
import 'package:mvp_template/app_scaffold.dart';
import 'package:mvp_template/deep_dive/deep_dive.dart';
import 'package:mvp_template/deep_dive_details/deep_dive_details.dart';
import 'package:mvp_template/deep_dive_details/details_with_thunks.dart';

const DEEP_DIVE_ROUTE = '/deepDive';
const DEEP_DIVE_DETAILS = '/deepDiveDetails';
const DEEP_DIVE_THUNK = '/deepDiveThunk';

class MaterialAppWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          headline6: TextStyle(
            fontSize: 40,
            color: Colors.red,
            decoration: TextDecoration.underline
          )
        )
      ),
      initialRoute: DEEP_DIVE_ROUTE,
      routes: {
        DEEP_DIVE_ROUTE: (context) => AppScaffold(
          body: SafeArea(
            child: DeepDive()
          )
        ),
        DEEP_DIVE_DETAILS: (context) => AppScaffold(
          body: SafeArea(
            child: DeepDiveDetails()
          )
        ),
        DEEP_DIVE_THUNK: (context) => AppScaffold(
          body: SafeArea(
            child: DetailsWithThunks()
          )
        ),
      },
    );
  }
}