import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/previous_name_model.dart';

class ThirdRowWidget extends StatelessWidget {
  const ThirdRowWidget({Key? key}) : super(key: key);

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
                //Text('The previous name will appear here!'),
                Text('${context.watch<PreviousNameModel>().name}'),
                /*
                ElevatedButton(
                  /// This is our another [PreviousNameModel] listener
                  /// read() will fire the event that fetches the previous name
                  onPressed: () =>
                      context.read<PreviousNameModel>().previousName(),
                  child: Text('Get Previous Name'),
                ),
                */
                FloatingActionButton(
                  onPressed: () =>
                      context.read<PreviousNameModel>().previousName(),
                  tooltip: 'Get Previous Name',
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
