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
      ..initColumns([
        TableColumnDescr()
          ..caption = 'column 1'
          ..width = 100
          ..sortable = true,
        TableColumnDescr()
          ..caption = 'column 2'
          ..width = 100
          ..sortable = true,
        TableColumnDescr()
          ..caption = 'column 3'
          ..width = 100,
        TableColumnDescr()
          ..caption = 'column 4'
          ..width = 100,
        TableColumnDescr()
          ..caption = 'column 5'
          ..width = 100,
      ]);
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
      ..initColumns([
        TableColumnDescr()
          ..caption = 'column 1'
          ..width = 100,
        TableColumnDescr()
          ..caption = 'column 2'
          ..width = 100,
        TableColumnDescr()
          ..caption = 'column 3'
          ..width = 100,
        TableColumnDescr()
          ..caption = 'column 3'
          ..width = 100,
        TableColumnDescr()
          ..caption = 'column 5'
          ..width = 100,
      ]);
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
