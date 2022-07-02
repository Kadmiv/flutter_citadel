import 'dart:async';

import 'package:flutter/widgets.dart';

/**
 * Created by Kadmiv on 23.12.2021
 */

abstract class BaseViewModel {
  void dispose();
}

abstract class AbstractMainViewModel extends BaseViewModel {
  StreamController<T> createController<T>();

  StreamController<T> createBroadcastController<T>();
}

class MainViewModel extends AbstractMainViewModel {
  //
  var controllers = <StreamController>[];

  @override
  StreamController<T> createBroadcastController<T>() {
    var controller = StreamController<T>.broadcast();

    controllers.add(controller);

    return controller;
  }

  @override
  StreamController<T> createController<T>() {
    var controller = StreamController<T>();

    controllers.add(controller);

    return controller;
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.close();
    }
    controllers.clear();
  }
}

abstract class ViewModelState<M extends AbstractMainViewModel, T extends StatefulWidget> extends State<T>{

  late M viewModel;

  @override
  void dispose() {
    // TODO: implement dispose
    viewModel.dispose();
    super.dispose();
  }
}

class DataContainer<T> {
  final T data;

  final bool hasError;
  final String? error;

  DataContainer(this.data,{this.hasError = false, this.error});
}

enum PageState {
  LOADING,
  DONE,
  EMPTY_DATA,
  FAIL,
  ERROR,
  CLOSE,
}

class PageStateWithData<D> {
  final PageState state;
  D? data;

  PageStateWithData({required this.state, this.data});
}
