import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_link/simple_dart_link.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_view_controller/simple_dart_view_controller.dart';

class ParentView extends View {
  HeadedPanel headedPanel = HeadedPanel();

  ParentView() {
    vertical = true;
    id = 'parent_view';
    caption = 'ParentView';
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    headedPanel.caption = 'fullPath:${viewController.generateFullPath(this)}';
    final childLink = Link()
      ..caption = 'Open Child View'
      ..href = '${viewController.generateFullPath(this)}/child_view?id=15&name=Alice';
    headedPanel.contentPanel.add(childLink);
    add(headedPanel);
  }
}
