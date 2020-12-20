import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mvp_template/core/store.dart';
import 'package:mvp_template/deep_dive/redux/action.dart';
import 'package:mvp_template/material_app_wrap.dart';

class GridItem extends StatelessWidget {
  final int mockData;

  GridItem({this.mockData});

  void _onTap(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    store.dispatch(SelectDeepDiveId(mockData.toString()));

    Navigator.of(context).pushNamed(DEEP_DIVE_THUNK);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: Container(
        margin: EdgeInsets.all(10),
        width: 150,
        height: 150,
        child: Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        )
      )
    );
  }
}