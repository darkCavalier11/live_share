import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:live_share/redux/store.dart';
import 'package:live_share/ui/base_screens/app_base_view.dart';

late final AppState state;

void main() {
  state = AppState.initialState();
  var store = Store<AppState>(initialState: state);
  runApp(
    StoreProvider<AppState>(
      store: store,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBaseView(),
    );
  }
}
