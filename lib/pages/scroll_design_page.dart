import 'package:flutter/material.dart';
import 'package:s8_designs/routes/app_routes.dart';

class ScrollDesignPage extends StatelessWidget {

	static const String route = 'scroll_design_page';

	final boxDecoration = const BoxDecoration(
			gradient: LinearGradient(
					begin: Alignment.topCenter,
					end: Alignment.bottomCenter,
					stops: [0.5, 0.5],
					colors: [
						Color(0xff59E9C6),
						Color(0xff30BAD5),
					]
			)
	);

	const ScrollDesignPage({super.key});

	@override
	Widget build(BuildContext context) {

  	return Scaffold(
    	body: Container(
				decoration: boxDecoration,
    	  child: PageView(
				scrollDirection: Axis.vertical,

					// Se usa para eliminar el efecto de rebote superior e inferior del PageView
					// physics: const ClampingScrollPhysics(),

					children: const [
						_Page1(),
						_Page2()
					]
			),
    	)
		);
	}
}

class _Page1 extends StatelessWidget {

	const _Page1();

  @override
  Widget build(BuildContext context) {
    return Stack(
				alignment: Alignment.center,
				children: const [
					//Background image
					_Background(),

					//Main content
					_MainContent()
				]
			);
  }
}

class _Background extends StatelessWidget {

	const _Background();

  @override
  Widget build(BuildContext context) {
    return Container(
			color: const Color(0xff30BAD5),
			height: double.infinity,
			alignment: Alignment.topCenter,
			child: const Image(
				image: AssetImage('assets/scroll_design_back_1.png')
			)
		);
  }
}

class _MainContent extends StatelessWidget {

	const _MainContent({super.key});

	@override
	Widget build(BuildContext context) {

		const textStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white);

		return SafeArea(
			bottom: true,
		  child: Column(
		  	mainAxisAlignment: MainAxisAlignment.spaceEvenly,
		  	crossAxisAlignment: CrossAxisAlignment.center,
		  	children: [
					const SizedBox(height: 30),
		  		const Text('11º', style: textStyle),
					const SizedBox(height: 18),
		  		const Text('Wednesday', style: textStyle),
		  		Expanded(
		  			child: Container(),
		  		),
		  		const Icon(Icons.keyboard_arrow_down_rounded, size: 100, color: Colors.white,)
		  	],
		  ),
		);
	}
}

class _Page2 extends StatelessWidget {

	const _Page2();

	@override
	Widget build(BuildContext context) {
		return Container(
			color: const Color(0xff30BAD5),
			alignment: Alignment.center,
			child: TextButton(
				onPressed: () => Navigator.pop(context),
				style: TextButton.styleFrom(
					backgroundColor: const Color(0xff0098FA),
					elevation: 8,
					padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
					shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
				),
				child: const Text('Back to Main',
					style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)
				),
			)
		);
	}
}