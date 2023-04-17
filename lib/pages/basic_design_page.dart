import 'package:flutter/material.dart';

class BasicDesignPage extends StatelessWidget {

	static const String route = 'basic_design_page';

	const BasicDesignPage({super.key});

	@override
	Widget build(BuildContext context) {
  	return Scaffold(
    	body: Column(
      	children: const [
					//Image
					Image(
            image: AssetImage('assets/landscape.jpg'),
          ),

					//Title
					_Title(),

					//Buttons section
					_ButtonsSection(),

					//Description
					_CustomParagraph(paragraph: 'vulputate antiopam elaboraret postea cursus ancillae phasellus taciti hinc dolorum ipsum no utroque eleifend veritus homero te periculis posidonium purus dicam mandamus fusce est singulis viris mnesarchum mediocrem morbi orci potenti discere ornare dicunt agam melius lorem ante esse tamquam primis duo aeque massa penatibus cursus netus elit eos inceptos')
        ]
			)
		);
	}

}

class _Title extends StatelessWidget {

	const _Title();

  @override
  Widget build(BuildContext context) {
    return Container(
			padding: const EdgeInsets.all(30),
      child: Row(
      	children: [
      		Column(
					crossAxisAlignment: CrossAxisAlignment.start,
      		  children: const [
      		    Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
							SizedBox(height: 4),
      				Text('Kandersteg Switzerland', style: TextStyle(color: Colors.white54))
      		  ],
      		),

					const Expanded(
						child: SizedBox(),
					),

      		const Icon(Icons.star, color: Colors.red),
					const SizedBox(width: 2),
      		const Text('41')
      	]
      ),
    );
  }
}

class _ButtonsSection extends StatelessWidget {

	const _ButtonsSection();

	@override
	Widget build(BuildContext context) {
		return Row(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: const [
				_CustomButton(icon: Icons.call, text: 'CALL'),
				_CustomButton(icon: Icons.navigation, text: 'ROUTE'),
				_CustomButton(icon: Icons.share, text: 'SHARE')
			],
		);
	}
}

class _CustomButton extends StatelessWidget {

	final IconData icon;
	final String text;

  const _CustomButton({
		required this.icon,
		required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    	onTap: () => print(text),
      child: Column(
      	children: [
      		Icon(icon, color: Colors.lightBlue),
      		const SizedBox(height: 10),
      		const Text('CALL', style: TextStyle(color: Colors.lightBlue))
      	]
      ),
    );
  }
}

class _CustomParagraph extends StatelessWidget {

	final String paragraph;

	const _CustomParagraph({
		required this.paragraph
	});

	@override
	Widget build(BuildContext context) {
		return Container(
				alignment: Alignment.center,
				padding: const EdgeInsets.all(30),
				child: Text(paragraph)
		);
	}
}