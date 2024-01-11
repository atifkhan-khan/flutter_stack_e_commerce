import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stack_e_comerce/app/app.bottomsheets.dart';
import 'package:flutter_stack_e_comerce/app/app.dialogs.dart';
import 'package:flutter_stack_e_comerce/app/app.locator.dart';
import 'package:flutter_stack_e_comerce/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
