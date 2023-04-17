import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3, 0.7],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333)
          ]
      )
  );

  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        // Purple background gradient
        Container(
          decoration: boxDecoration,
        ),

        const _PinBox()
      ],
    );
  }
}

class _PinBox extends StatelessWidget {

  const _PinBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      left: -48,
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1)
              ]
            )
          )
        ),
      ),
    );
  }
}
