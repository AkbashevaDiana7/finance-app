import 'package:finance_app/core/router/route_path.dart';
import 'package:rxdart/rxdart.dart';

class NavigationStateHolder {
  final _routeSubject = BehaviorSubject<AppRoutePath>.seeded(
    AppRoutePath.homePage,
  );

  Stream<AppRoutePath> get routeStream => _routeSubject.stream;

  AppRoutePath get currentRoute => _routeSubject.value;

  void goToHome() => _routeSubject.add(AppRoutePath.homePage);

  void goToExpenses() => _routeSubject.add(AppRoutePath.expenses);

  void goToIncome() => _routeSubject.add(AppRoutePath.income);

  void goToAccount() => _routeSubject.add(AppRoutePath.account);

  void goToArticles() => _routeSubject.add(AppRoutePath.articles);

  void goToSettings() => _routeSubject.add(AppRoutePath.settings);

  void dispose() => _routeSubject.close();
}
