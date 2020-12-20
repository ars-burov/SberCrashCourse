import 'package:mvp_template/deep_dive/redux/action.dart';
import 'package:mvp_template/deep_dive/redux/state.dart';

DeepDiveState deepDiveReducer(DeepDiveState state, dynamic action) {
  if (action is SelectDeepDiveId) {
    return state.copyWith(
      selectedDeepDiveId: action.id
    );
  }

  if (action is UpdateReportsAction) {
    return state.copyWith(
      reports: action.reports
    );
  }

  return state;
}
