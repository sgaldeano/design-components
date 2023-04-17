import 'dart:ui';

import 'package:flutter/material.dart';

class CardsTable extends StatelessWidget {

  const CardsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Table(
        children: const [
          TableRow(
            children: [
              _Card(icon: Icons.window_outlined, text: 'General', color: Colors.blue, leftMargin: 20, rightMargin: 10),
              _Card(icon: Icons.directions_bus, text: 'Transport', color: Colors.purple, leftMargin: 10, rightMargin: 20),
            ]
          ),
          TableRow(
              children: [
                _Card(icon: Icons.shopping_bag, text: 'Shopping', color: Colors.purpleAccent, leftMargin: 20, rightMargin: 10),
                _Card(icon: Icons.receipt_long, text: 'Bills', color: Colors.orange, leftMargin: 10, rightMargin: 20)
              ]
          ),
          TableRow(
              children: [
                _Card(icon: Icons.movie_creation, text: 'Entertainment', color: Colors.indigo, leftMargin: 20, rightMargin: 10),
                _Card(icon: Icons.fastfood_rounded, text: 'Grocery', color: Colors.green, leftMargin: 10, rightMargin: 20)
              ]
          )
        ]
      ),
    );
  }
}

class _Card extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color;
  final double leftMargin;
  final double rightMargin;

  const _Card({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.leftMargin,
    required this.rightMargin
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin, bottom: 20),
      child: _CardBackground(
        child: _CardContent(icon: icon, text: text, color: color),
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    final boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(52, 66, 107, 0.7)
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8,
          sigmaY: 8
        ),
        child: Container(
          height: 194,
          decoration: boxDecoration,
          child: child,
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {

  final Color color;
  final IconData icon;
  final String text;

  const _CardContent({
    required this.color,
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {

    final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 0.4],
        colors: [
          Colors.white,
          color
        ]
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Container(
            decoration: boxDecoration,
            width: 70,
            height: 70,
            child: Icon(
              icon,
              size: 36,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(text,
            style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.bold
            )
        )
      ],
    );
  }
}