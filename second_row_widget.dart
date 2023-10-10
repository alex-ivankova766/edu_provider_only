import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/name_change_model.dart';

class SecondRowWidget extends StatelessWidget {
  const SecondRowWidget({
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
                //Text('The changed name will appear here!'),
                Text('${context.watch<NameChangeModel>().name}'),
                /*
                ElevatedButton(
                  /// This is our another [NameChangeModel] listener
                  /// read() will fire the event that changes the name
                  ///
                  onPressed: () => context.read<NameChangeModel>().changeName(),
                  child: Text('Change Name'),
                ),
                */
                FloatingActionButton(
                  onPressed: () => context.read<NameChangeModel>().changeName(),
                  tooltip: 'Change Name',
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
