import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_pager/simple_dart_pager.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_table/simple_dart_table.dart';

class PagerView extends View implements Pageable {
  Pager pager = Pager();

  Table simpleTable = Table()
    ..fillContent = true
    ..fullSize();

  int _currentPage = 1;
  final int _pageCount = 1000;

  PagerView() {
    id = 'pager';
    caption = 'Pager';
    vertical = true;
    padding = '10px';
    spacing = '10px';
    fillContent = true;
    showInNavBar = true;
    fullSize();
    simpleTable
      ..createColumn('column 1', 100)
      ..createColumn('column 2', 100)
      ..createColumn('column 3', 100);
    pager.init(this);
    add(HeadedPanel()
      ..caption = 'Pager'
      ..addContent([pager, simpleTable])
      ..width = '300px');
  }

  @override
  Future<void> init(Map<String, String> params, Map<String, String>? state) async {
    this.params = params;
    this.state = state;
    currentPage = 1;
  }

  @override
  int get currentPage => _currentPage;

  @override
  set currentPage(int value) {
    _currentPage = value;
    simpleTable.clear();
    for (var i = 1; i <= 15; i++) {
      simpleTable.createRow(
          [(_currentPage - 1) * 15 + i, 'row ${(_currentPage - 1) * 15 + i}', DateTime.now().add(Duration(days: i))]);
    }
  }

  @override
  int get pageCount => _pageCount;
}
