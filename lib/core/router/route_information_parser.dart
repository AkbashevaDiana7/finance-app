import 'package:flutter/material.dart';

import 'route_path.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  const AppRouteInformationParser();

  @override
  Future<AppRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = routeInformation.uri;
    if (uri.pathSegments.isEmpty) {
      return AppRoutePath.homePage;
    }
    return switch (uri.pathSegments.first) {
      'expenses' => AppRoutePath.expenses,
      'income' => AppRoutePath.income,
      'account' => AppRoutePath.account,
      'articles' => AppRoutePath.articles,
      'settings' => AppRoutePath.settings,
      _ => AppRoutePath.homePage,
    };
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) =>
      RouteInformation(uri: Uri.parse('/${configuration.name}'));
}
