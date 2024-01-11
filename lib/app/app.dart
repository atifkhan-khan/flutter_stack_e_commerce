import 'package:flutter_stack_e_comerce/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:flutter_stack_e_comerce/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:flutter_stack_e_comerce/ui/views/home/home_view.dart';
import 'package:flutter_stack_e_comerce/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_stack_e_comerce/services/firebase_services_service.dart';
import 'package:flutter_stack_e_comerce/ui/views/u_i_design/u_i_design_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: UIDesignView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: FirebaseServicesService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
