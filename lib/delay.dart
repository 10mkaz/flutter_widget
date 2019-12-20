import 'package:flutter/foundation.dart';
import 'dart:io';

class MyDelay{

  // async がつけられたメソッドの内容は非同期で処理される。
  // async メソッドは、メソッドの呼び出し元ではメソッドの完了を待たずに処理が進む。

  static Future<void> delay1() async {
    print('---------- MyDelay delay1() start ${new DateTime.now()}');

    // sleepベタ
    sleep(Duration(seconds: 3));
    print('---------- MyDelay delay1() 1 ${new DateTime.now()}');

    // sleepは、Futureを使ってもスレッドを占有する
    // await をつかうメソッドは async でなければならない
    await Future(() => sleep(Duration(seconds: 3)));
    print('---------- MyDelay delay1() 2 ${new DateTime.now()}');

    // ブロックせずに単に3秒後に処理を継続したい場合
    await Future.delayed(Duration(seconds: 3));
    print('---------- MyDelay delay1() 3 ${new DateTime.now()}');

    await compute(sleep, Duration(seconds: 3));
    print('---------- MyDelay delay1() end ${new DateTime.now()}');
//実行例：
//  I/flutter (23075): ********** class _MyHomePageState FlatButton: MyDelay Button start 2019-12-17 06:23:36.857943
//  I/flutter (23075): ---------- MyDelay delay1() start 2019-12-17 06:23:36.872700
//  I/flutter (23075): ---------- MyDelay delay1() 1 2019-12-17 06:23:39.894082
//  I/flutter (23075): ********** class _MyHomePageState FlatButton: MyDelay Button end 2019-12-17 06:23:39.894791
//  I/flutter (23075): ---------- MyDelay delay1() 2 2019-12-17 06:23:42.955384
//  I/flutter (23075): ---------- MyDelay delay1() 3 2019-12-17 06:23:45.960780
//  I/flutter (23075): ---------- MyDelay delay1() end 2019-12-17 06:23:49.195836
  }


  static Future<void> delay2() async {
    print('---------- MyDelay delay2() start ${new DateTime.now()}');

    // awaitが無いので待たない
    new Future.delayed(new Duration(seconds: 3));
    print('---------- MyDelay delay2() 1 ${new DateTime.now()}');

    // awaitがあるので待つ
    await new Future.delayed(new Duration(seconds: 3));
    print('---------- MyDelay delay2() 2 ${new DateTime.now()}');

    // 待って戻りを得る
    var result = await _delay2Wait();
    print('---------- MyDelay delay2() 3 $result');

    await delayLoop();
    print('---------- MyDelay delay2() end');
//  実行例
//    I/flutter (23898): ---------- MyDelay delay2() start 2019-12-17 07:06:57.650685
//    I/flutter (23898): ---------- MyDelay delay2() 1 2019-12-17 07:06:57.662141
//    I/flutter (23898): ---------- MyDelay delay2() 2 2019-12-17 07:07:00.665135
//    I/flutter (23898): ---------- MyDelay delay2() end 2019-12-17 07:07:03.670136
  }

  static Future <String> _delay2Wait(){
    return new Future.delayed(new Duration(seconds: 3), (){
      return new DateTime.now().toString();
    });
  }

  static void delayLoop() async {
    for(int i=0; i<10; i++){
      await new Future.delayed(new Duration(seconds: 3));
    }
  }

}

