import 'package:flutter/material.dart';
import '../pages/pages.dart';

class AppRoutes {

  static const String initialRoute = 'basic_design_page';

  static final Map<String, Widget Function(BuildContext)> routes = {
    'basic_design_page' : (BuildContext context) => const BasicDesignPage()
  };

}