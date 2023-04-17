import 'package:flutter/material.dart';

class PageTitles extends StatelessWidget {

  const PageTitles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Clasify transaction', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('Clasify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 16))
          ],
        ),
      ),
    );
  }
}
