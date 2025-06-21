enum AppRoutePath {
  expenses,
  income,
  account,
  articles,
  settings;

  bool get isHomePage => this == homePage;

  static const homePage = AppRoutePath.expenses;
}
