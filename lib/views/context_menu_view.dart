import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_context_menu/simple_dart_context_menu.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class ContextMenuView extends View {
  final contextMenu = ContextMenu();

  ContextMenuView() {
    id = 'context_menu';
    caption = 'ContextMenu';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Context menu'
        ..width = '300px'
        ..addContent([
          Button()
            ..caption = 'Show context menu'
            ..onClick.listen((event) => {
                  contextMenu
                      .showContextMenu(['Action 1', 'Action 2', 'Action 3', 'Action 4'], event.client.x, event.client.y)
                })
        ])
    ]);
  }
}
