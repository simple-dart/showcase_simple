import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_table/simple_dart_table.dart';

class TableView extends View {
  TableView() {
    id = 'table';
    caption = 'Table';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final simpleTable = createSimpleTable();
    final multiRowTable = createTableWithHeaderCopy();
    addAll([
      HeadedPanel()
        ..caption = 'Simple Table'
        ..addContent([simpleTable])
        ..fullSize()
        ..fillContent = true,
      HeadedPanel()
        ..addContent([multiRowTable])
        ..fullSize()
        ..fillContent = true,
    ]);
  }

  Table createSimpleTable() {
    final ret = Table()
      ..width = '400px'
      ..fillContent = true
      ..createColumn('column 1', 100, sortable: true)
      ..createColumn('column 2', 100, sortable: true)
      ..createColumn('column 3', 100)
      ..createColumn('column 4', 100)
      ..createColumn('column 5', 100);
    for (var i = 0; i < 100; i++) {
      ret
        ..createRow(['val1', 1, 'val3', 'val4', 'val5'])
        ..createRow(['val3', 55.0, 'val3', 'val4', 'val5'])
        ..createRow(['val1', '22', 'val3', 'val4', 'val5']);
    }
    return ret;
  }

  Table createTableWithHeaderCopy() {
    final ret = Table()
      ..fillContent = true
      ..createColumn('column 1', 100)
      ..createColumn('column 2', 100)
      ..createColumn('column 3', 100)
      ..createColumn('column 4', 100)
      ..createColumn('column 5', 100);
    for (var i = 0; i < 100; i++) {
      ret
        ..createRow([
          ['row1', 'row2', 'row3'],
          ['row1', 'row2'],
          ['row1'],
          ['row1', 'row2'],
          ['row1', 'row2', 'row3']
        ])
        ..createRow([
          ['val1'],
          ['val2'],
          ['val3'],
          ['val4'],
          ['val5']
        ]);
    }
    return ret;
  }
}
