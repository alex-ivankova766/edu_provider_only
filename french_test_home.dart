import 'package:flutter/material.dart';
import 'french_test_first_view.dart';

class FrenchTestHome extends StatelessWidget {
  const FrenchTestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('French Test'),
      ),
      body: FrenchTestFirstView(),
    );
  }
}
