import 'dart:convert';

import 'package:live_share/redux/models/ui_state.dart';

class AppState {
  final UIState uiState;
  AppState({
    required this.uiState,
  });

  AppState copyWith({
    UIState? uiState,
  }) {
    return AppState(
      uiState: uiState ?? this.uiState,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uiState': uiState.toMap(),
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      uiState: UIState.fromMap(map['uiState']),
    );
  }

  factory AppState.initialState() {
    return AppState(
      uiState: UIState(flexSidebar: 2, flexBody: 7, flexTab1: 0, flexTab2: 4),
    );
  }

  String toJson() => json.encode(toMap());

  factory AppState.fromJson(String source) =>
      AppState.fromMap(json.decode(source));

  @override
  String toString() => 'AppState(uiState: $uiState)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppState && other.uiState == uiState;
  }

  @override
  int get hashCode => uiState.hashCode;
}
