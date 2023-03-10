import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class HomeView extends View {
  HomeView() {
    id = 'home';
    caption = 'Showcase Simple';
    vertical = true;
    padding = '20px';
    spacing = '10px';
    fillContent = true;
    showInNavBar = false;
    fullSize();
    addAll([Label()..caption = 'Example of using views and widgets from libraries']);
  }
}
