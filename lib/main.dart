import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:worker_manager/worker_manager.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'core/config/app_config.dart';
import 'core/router/route_information_parser.dart';
import 'core/router/router_delegate.dart';
import 'scope/scope.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print(
        '${record.level.name}[${record.loggerName}]: ${record.time}: ${record.message}',
      );
    }
  });

  await FlutterLocalization.instance.ensureInitialized();
  Intl.defaultLocale = 'ru_RU';
  initializeDateFormatting();

  // Initialize WorkerManager
  await workerManager.init();

  await AppConfigHolder.initialize();

  final scopeHolder = AppScopeHolder(globalKey: GlobalKey());
  await scopeHolder.create();

  runApp(_App(scopeHolder: scopeHolder));
}

class _App extends StatelessWidget {
  final AppScopeHolder scopeHolder;

  const _App({required this.scopeHolder});

  @override
  Widget build(BuildContext context) => ScopeProvider(
        holder: scopeHolder,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff2AE881),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color(0xff2AE881),
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
          ),
          locale: const Locale('ru', 'RU'),
          supportedLocales: const [Locale('ru', 'RU')],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          routerDelegate: AppRouterDelegate(
            scopeHolder.scope!.navigationStateHolderDep.get,
          ),
          routeInformationParser: const AppRouteInformationParser(),
        ),
      );
}
