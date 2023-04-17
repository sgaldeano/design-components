import 'package:flutter/material.dart';
import '../pages/pages.dart';

class AppRoutes {

  static const String initialRoute = HomePage.route;

  static const String homePageRoute = HomePage.route;
  static const String basicDesignPageRoute = BasicDesignPage.route;
  static const String scrollDesignPageRoute = ScrollDesignPage.route;

  static final Map<String, Widget Function(BuildContext)> routes = {
    homePageRoute        : (_) => const HomePage(),
    basicDesignPageRoute : (_) => const BasicDesignPage(),
    scrollDesignPageRoute: (_) => const ScrollDesignPage()
  };

}