import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Response;
import 'package:mvp_template/deep_dive/redux/action.dart';
import 'package:redux/redux.dart';
import 'package:mvp_template/core/store.dart';

const FETCH_URL = 'https://ai4banki.ru/api/deep-dives/get-feed?access_token=41b06bf0-7bea-46f9-b007-b9fb54500a35';

void getDeepDiveFeed(Store<AppState> store) async {
  Response res;
  try {
    final requestBody = jsonEncode({"page_from": 73,"page_to": 81,"username": "a"});
    res = await http.post(
      FETCH_URL,
      headers: {'Content-Type': 'application/json'},
      body: requestBody,
    );
    if (res.statusCode != 200) {
      throw 'Bad code';
    }
  } catch(e) {
    // store.dispatch(UpdateErrorStatus(e));
    return;
  }
  final data = jsonDecode(res.body);
  store.dispatch(UpdateReportsAction(data));
}
