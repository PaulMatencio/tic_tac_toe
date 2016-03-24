import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer/polymer.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/bootstrap.dart';

import 'package:tic_tac_to/views/main_app/main_app.dart';

main() async {
  await initPolymer();
  bootstrap(MainApp);
}