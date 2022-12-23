import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_tabs_panel/simple_dart_tabs_panel.dart';
import 'package:simple_dart_tabs_panel_with_limit/simple_dart_tabs_panel_with_limit.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class TabPanelWithLimitView extends View {
  HeadedPanel headedPanel = HeadedPanel()..fullSize();

  TabPanelWithLimitView() {
    id = 'tab_panel_with_limit';
    caption = 'TabPanelWithLimit';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    add(headedPanel);

    final maxTabsPanel = TabsPanelWithLimit()
      ..maxTabs = 20
      ..fillContent = true
      ..fullSize();
    for (var i = 0; i < 100; i++) {
      maxTabsPanel.addTabTag(LabelTabTag(Panel()..add(Label()..caption = 'Tab$i content'))..caption = 'Tab$i');
    }
    maxTabsPanel.currentTag = maxTabsPanel.tags.first;
    headedPanel.caption = 'TabPanelWithLimit';
    headedPanel.contentPanel.add(maxTabsPanel);
  }
}
