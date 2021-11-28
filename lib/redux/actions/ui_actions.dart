import 'dart:async';
import 'dart:math';

import 'package:async_redux/async_redux.dart';
import 'package:live_share/main.dart';

import '../store.dart';

class ChangeFlexAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    return state.copyWith(
      uiState: state.uiState.copyWith(
        flexTab2: Random().nextInt(7),
      ),
    );
  }
}
