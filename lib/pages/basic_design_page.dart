import 'package:flutter/material.dart';

class BasicDesignPage extends StatelessWidget {

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
					Title()

        ]
			)
		);
	}

}

class Title extends StatelessWidget {

	const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
			padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Row(
      	children: [
      		Column(
					crossAxisAlignment: CrossAxisAlignment.start,
      		  children: const [
      		    Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
      				Text('Kandersteg Switzerland', style: TextStyle(color: Colors.black45))
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