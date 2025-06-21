import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:logging/logging.dart';

abstract interface class PageNavigationState implements Enum {}

abstract interface class PageNavigationScope<T extends PageNavigationState>
    implements StatefulWidget {
  T get initialState;

  Widget buildPage(T state);
}

abstract interface class PageNavigationScopeState<T extends PageNavigationState>
    implements State<PageNavigationScope<T>> {
  void goTo(T state);
  void pop();

  T get state;
}

abstract interface class PageNavigationScopeFactory<
  T extends PageNavigationState
> {
  PageNavigationScope<T> create({Widget Function(T) pageBuilders});
}

mixin RxPageNavigationScope<T extends PageNavigationState>
    implements PageNavigationScope<T> {
  @override
  State<PageNavigationScope<T>> createState() =>
      _PageNavigationScopeState<T>(Logger('RxPageNavigationScope<$T>'));
}

class _PageNavigationScopeState<T extends PageNavigationState>
    extends State<PageNavigationScope<T>>
    implements PageNavigationScopeState<T> {
  late final BehaviorSubject<T> _stateSubject;

  final Logger _logger;

  _PageNavigationScopeState(this._logger);

  @override
  void goTo(T state) {
    _logger.info('goTo to $state');
    _stateSubject.add(state);
  }

  @override
  void pop() {
    _logger.info('pop to ${widget.initialState}');
    _stateSubject.add(widget.initialState);
  }

  @override
  T get state => _stateSubject.value;

  @override
  void initState() {
    super.initState();
    _logger.info('initState with default state ${widget.initialState}');
    _stateSubject = BehaviorSubject.seeded(widget.initialState);
  }

  @override
  Widget build(BuildContext context) => PageNavigation<T>(
    scopeState: this,
    child: StreamBuilder<T>(
      initialData: widget.initialState,
      stream: _stateSubject.stream,
      builder: (context, snapshot) => widget.buildPage(snapshot.requireData),
    ),
  );
}

class PageNavigation<T extends PageNavigationState> extends InheritedWidget {
  final PageNavigationScopeState<T> scopeState;

  const PageNavigation({
    super.key,
    required super.child,
    required this.scopeState,
  });

  @override
  bool updateShouldNotify(PageNavigation<T> oldWidget) =>
      scopeState.state != oldWidget.scopeState.state;
}

extension PageNavigationScopeExtension on BuildContext {
  PageNavigationScopeState<T> pageNavigation<T extends PageNavigationState>() =>
      dependOnInheritedWidgetOfExactType<PageNavigation<T>>()?.scopeState ??
      (throw UnimplementedError('[PageNavigation<$T>] not found'));
}

abstract class BasePageNavigationScope<T extends PageNavigationState>
    extends StatefulWidget
    with RxPageNavigationScope<T>
    implements PageNavigationScope<T> {
  BasePageNavigationScope({
    super.key,
    required this.pageBuilder,
    required this.initialState,
  });

  final Widget Function(T) pageBuilder;
  @override
  final T initialState;

  @override
  Widget buildPage(T state) => pageBuilder(state);
}
