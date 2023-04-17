import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class HomePage extends StatelessWidget {

	static const String route = 'home_page';

	const HomePage({super.key});

	@override
	Widget build(BuildContext context) {
  	return Scaffold(
    	body: Stack(
				children: const [
					// Background
					Background(),

					//Home body
					_HomeBody()
				],
			),
			bottomNavigationBar: const CustomBottomNavigationBar(),
		);
	}

}

class _HomeBody extends StatelessWidget {

	const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
			child: Column(
				children: const [
					// Titles
					PageTitles(),

					//Cards table
					CardsTable()
				]

			),
		);
  }
}