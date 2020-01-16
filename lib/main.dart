import 'package:flutter/material.dart';

import 'main_menu.dart';

// Flutter のメインエントリ
void main() => runApp(MyApp());

// Flutter のメインエントリから起動されるメインクラス
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}
