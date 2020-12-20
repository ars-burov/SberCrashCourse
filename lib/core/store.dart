import 'package:mvp_template/deep_dive/redux/reducer.dart';
import 'package:mvp_template/deep_dive/redux/state.dart';
import 'package:redux/redux.dart';
import 'package:mvp_template/config_redux/reducer.dart';
import 'package:mvp_template/config_redux/state.dart';
import 'package:redux_thunk/redux_thunk.dart';

class AppState {
  final ConfigState config;
  final DeepDiveState deepDive;

  // ({config}) => this.config = config
  AppState({
    this.config,
    this.deepDive
  });

  static AppState initialState() => AppState(
    config: ConfigState.initialState(),
    deepDive: DeepDiveState.initialState()
  );
}

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    config: configReducer(state.config, action),
    deepDive: deepDiveReducer(state.deepDive, action)
  );
}

Store<AppState> createStore() => Store<AppState>(
  appReducer,
  initialState: AppState.initialState(),
  middleware: [thunkMiddleware]
  // thunkware: dispatch(httpRequest) -> action(httpResult) -> state changed
);
