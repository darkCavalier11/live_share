import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/ui/base_screens/explore_tab.dart';
import 'package:live_share/home_screen/views/home_view.dart';
import 'package:live_share/hubs/views/hubs_view.dart';
import 'package:live_share/main.dart';
import 'package:live_share/redux/store.dart';
import 'package:live_share/ui/base_screens/sidebar.dart';

const int _k = 1;

class AppBodyView extends StatelessWidget {
  const AppBodyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      vm: () => _Factory(this),
      builder: (context, snapshot) {
        return Padding(
          padding: const EdgeInsets.all(UIconstants.bodyPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SideBar(),
              if (_k == 0) ...[
                Flexible(
                  flex: snapshot.flexBody,
                  child: HomeView(),
                ),
              ] else if (_k == 1) ...[
                Flexible(
                  flex: snapshot.flexBody,
                  child: HubView(),
                ),
                Flexible(
                  flex: snapshot.flexTab1,
                  child: HubView(),
                ),
              ],
              Flexible(
                flex: snapshot.flexTab2,
                child: ExploreTab(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Factory extends VmFactory<AppState, AppBodyView> {
  _Factory(widget) : super(widget);

  @override
  _ViewModel fromStore() {
    return _ViewModel(
      flexSidebar: state.uiState.flexSidebar,
      flexBody: state.uiState.flexBody,
      flexTab1: state.uiState.flexTab1,
      flexTab2: state.uiState.flexTab2,
    );
  }
}

class _ViewModel extends Vm {
  final int flexSidebar;
  final int flexBody;
  final int flexTab1;
  final int flexTab2;
  _ViewModel({
    required this.flexSidebar,
    required this.flexBody,
    required this.flexTab1,
    required this.flexTab2,
  }) : super(equals: [
          flexSidebar,
          flexBody,
          flexTab1,
          flexTab2,
        ]);
}
