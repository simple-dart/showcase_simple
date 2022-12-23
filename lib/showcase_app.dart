import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_modal_controller/simple_dart_modal_controller.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_theme_controller/simple_dart_theme_controller.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';
import 'package:simple_dart_view_controller/simple_dart_view_controller.dart';

import 'views/buttons_view.dart';
import 'views/checkbox_view.dart';
import 'views/child_view.dart';
import 'views/context_menu_view.dart';
import 'views/dialog_view.dart';
import 'views/errors_view.dart';
import 'views/fields_view.dart';
import 'views/file_picker_view.dart';
import 'views/form_panel_view.dart';
import 'views/home_view.dart';
import 'views/image_button_view.dart';
import 'views/list_field_view.dart';
import 'views/object_table_view.dart';
import 'views/pager_view.dart';
import 'views/panel_view.dart';
import 'views/parent_view.dart';
import 'views/radiobutton_view.dart';
import 'views/repository_table_view.dart';
import 'views/select_field_view.dart';
import 'views/state_view.dart';
import 'views/tab_panel_view.dart';
import 'views/tab_panel_with_limit_view.dart';
import 'views/table_view.dart';

MainWindow mainWindow = MainWindow();

void start() {
  modalController.init();
  themeController.init(['Default', 'Dark', 'Blue']);
  final themeLabel = Label()..caption = 'Theme';

  final themePanel = Panel()
    ..vertical = true
    ..spacing = '5px'
    ..padding = '5px'
    ..addAll([themeLabel, mainWindow.themeSelect, mainWindow.monospaceCheckbox]);

  mainWindow.navBar.bottomPanel.add(themePanel);
  viewController.init(HomeView(), [
    PanelView(),
    FormPanelView(),
    CheckboxView(),
    SelectFieldView(),
    RadioView(),
    ListFieldView(),
    FieldsView(),
    ButtonsView(),
    ImageButtonView(),
    ContextMenuView(),
    FilePickerView(),
    TabPanelView(),
    TabPanelWithLimitView(),
    MessagesView(),
    DialogView(),
    TableView(),
    ObjectTableView(),
    RepositoryTableView(),
    PagerView(),
    StateView(),
    ParentView(),
    ChildView(),
  ]);
  mainWindow.start();
}
