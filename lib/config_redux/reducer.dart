import 'package:mvp_template/config_redux/actions.dart';
import 'package:mvp_template/config_redux/state.dart';

ConfigState configReducer(ConfigState state, dynamic action) {
  if (action is SetProdAction) {
    return ConfigState(
      isProd: action.isProd,
    );
  }

  return state;
}
