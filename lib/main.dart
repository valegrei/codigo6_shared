import 'package:codigo6_shared/pages/home_page.dart';
import 'package:codigo6_shared/utils/sp_global.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SPGlobal spGlobal = SPGlobal();
  await spGlobal.initSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
