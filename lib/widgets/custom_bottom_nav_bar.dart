import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        switch (index) {
          case 0: print('You are just in this page!');
          break;

          case 1: Navigator.pushNamed(context, AppRoutes.basicDesignPageRoute);
          break;

          case 2: Navigator.pushNamed(context, AppRoutes.scrollDesignPageRoute);
          break;
        }
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Graph'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'Users'
        )
      ]
    );
  }
}
