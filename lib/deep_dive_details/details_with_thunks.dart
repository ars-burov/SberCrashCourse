import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mvp_template/core/store.dart';
import 'package:mvp_template/deep_dive_details/thunks.dart';

class DetailsWithThunks extends StatelessWidget {
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      onInit: (store) {
        store.dispatch(getDeepDiveFeed);
      },
      converter: (store) {
        final model = _ViewModel(
          id: store.state.deepDive.selectedDeepDiveId,
          reports: store.state.deepDive.reports
        );

        return model;
      },
      builder: (context, model) {
        if (model.reports.isEmpty) {
          return Text('Loading');
        }

        return Column(
          children: [
            Image.asset('assets/images/sample.jpg'),
            Container(
              child: Text(model.reports.first['summary'])
            )
          ]
        );
      }
    );
  }
}

class _ViewModel {
  final String id;
  final List reports;

  _ViewModel({this.id, this.reports});
}