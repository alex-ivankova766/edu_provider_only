import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/number_model.dart';
import 'model/name_change_model.dart';
import 'model/previous_name_model.dart';
import 'view/french_test.dart';

void main() {
  runApp(
    /// Providers are above [FrenchTestApp] instead of inside it
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NumberModel()),
        ChangeNotifierProvider(create: (_) => NameChangeModel()),
        ChangeNotifierProvider(create: (_) => PreviousNameModel()),
      ],
      child: FrenchTestApp(),
    ),
  );
}
