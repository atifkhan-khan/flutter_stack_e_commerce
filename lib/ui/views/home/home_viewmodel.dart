import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stack_e_comerce/app/app.bottomsheets.dart';
import 'package:flutter_stack_e_comerce/app/app.dialogs.dart';
import 'package:flutter_stack_e_comerce/app/app.locator.dart';
import 'package:flutter_stack_e_comerce/app/app.router.dart';
import 'package:flutter_stack_e_comerce/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _naviServices = locator<NavigationService>();

  // final _firebaseAuth = locator<FirebaseServicesService>();

  GlobalKey<ScaffoldState> key = GlobalKey();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  // void signInAnonymously() async {
  //   try {
  //     final authResult = await _firebaseAuth.authResults.signInAnonymously();
  //     // final authResult = await FirebaseAuth.instance.signInAnonymously();
  //     print('${authResult.user!.uid}' + "init firebase app uid");
  //   } catch (e) {
  //     print(e.toString() + "init firebase app error");
  //   }
  // }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void navToUIScreen() {
    _naviServices.navigateToUIDesignView();
  }

  void navToProductDetail() {
    _naviServices.navigateToProductDetailsView();
  }
}
