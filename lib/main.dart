import 'package:flutter/material.dart';
import 'db/offline_db_provider.dart';
import 'screens/home_page.dart';

void main() {
  OfflineDbProvider.provider.initDB();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appName = 'expense_manager';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
