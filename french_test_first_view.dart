import 'package:flutter/material.dart';
import '../controller/first_row_widget.dart';
import '../controller/second_row_widget.dart';
import '../controller/third_row_widget.dart';

/// The first view of the app will display two buttons that will fire
/// two separate events throguh two model classes
/// one is NumberModel and the other is NameModel
/// these two models notify listeners who have subscribed to them
class FrenchTestFirstView extends StatelessWidget {
  const FrenchTestFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FirstRowWidget(),
            SecondRowWidget(),
            ThirdRowWidget(),
          ],
        ),
      ),
    );
  }
}
