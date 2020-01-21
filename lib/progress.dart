import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Progress Dialog の使い方
class ProgressTest extends StatefulWidget {
  ProgressTest({Key key}) : super(key: key);

  @override
  _ProgressTestState createState() => _ProgressTestState();
}

class _ProgressTestState extends State<ProgressTest> {

  _ProgressTestState() {
    print("_ProgressTestState()");
    _onLoading();
  }

  Future<String> _onLoading() async {
    print("_onLoading() start");

    try {
      // ここで時間のかかる処理
      await Future.delayed(
        Duration(seconds: 3),
      );
    } catch (error) {
      return Future.error(error);
    }

    print("_onLoading() end");
    return Future.value("Done!!");
  }

  @override
  Widget build(BuildContext context) {
    print("build()");

    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Test'),
      ),

      body: Center(
        child: FutureBuilder(
          future: _onLoading(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            // 通信中はスピナーを表示
            if (snapshot.connectionState != ConnectionState.done) {
              return CircularProgressIndicator();
            }

            // エラー発生時はエラーメッセージを表示
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            // データがnullでないかチェック
            if (snapshot.hasData) {
              return Text(snapshot.data);
            } else {
              return Text("not yet");
            }
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onPressed() {
    setState(() {
      _onLoading();
    });
  }

}

