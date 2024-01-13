import 'package:flutter_stack_e_comerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class UIDesignViewModel extends BaseViewModel {
  final _naviServices = locator<NavigationService>();

  void navToProductDetail() {
    _naviServices.navigateToProductDetailsView();
  }
}
