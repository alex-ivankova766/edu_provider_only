import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/number_model.dart';

class FirstRowWidget extends StatelessWidget {
  const FirstRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('You have pushed this button this time!'),

                /// This is our one [NumberModel] listener
                /// watch() will reflect the change in number
                /// as one presses the button
                Text('${context.watch<NumberModel>().counter}'),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<NumberModel>().incrementNumberByTwo(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
