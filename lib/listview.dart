import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ListViewとDialogの使い方
class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key key}) : super(key: key);
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _MyListData {
  String name="";
  int val=0;

  _MyListData({this.name, this.val});

  String getName() => name;   // nameを返す
  int getVal() => val;        // valを返す

  void setName(String name) => this.name=name;  // nameをセットする
  void setVal(int val) => this.val=val;         // valをセットする
}

class _ListViewScreenState extends State<ListViewScreen> {

  List<_MyListData> _myList = [];

  _ListViewScreenState(){
    _myList.add(new _MyListData(name: "LIST01", val: 1));

    _MyListData list2 = new _MyListData();
    list2.setName("LiST02");
    list2.setVal(2);
    _myList.add(list2);

    _MyListData list3 = new _MyListData(name: "LIST03", val: 3);
    _myList.add(list3);

    _MyListData list4 = new _MyListData();
    list4.name = "LiST04";
    list4.val = 4;;
    _myList.add(list4);

    _myList.add(new _MyListData(name: "LIST05", val: 5));
    _myList.add(new _MyListData(name: "LIST06", val: 6));
    _myList.add(new _MyListData(name: "LIST07", val: 7));
    _myList.add(new _MyListData(name: "LIST08", val: 8));
    _myList.add(new _MyListData(name: "LIST09", val: 9));
    _myList.add(new _MyListData(name: "LIST10", val: 10));
    _myList.add(new _MyListData(name: "LIST11", val: 11));
    _myList.add(new _MyListData(name: "LIST12", val: 12));
    _myList.add(new _MyListData(name: "LIST13", val: 13));
    _myList.add(new _MyListData(name: "LIST14", val: 14));
    _myList.add(new _MyListData(name: "LIST15", val: 15));
    _myList.add(new _MyListData(name: "LIST16", val: 16));
    _myList.add(new _MyListData(name: "LIST17", val: 17));
    _myList.add(new _MyListData(name: "LIST18", val: 18));
    _myList.add(new _MyListData(name: "LIST19", val: 19));
    _myList.add(new _MyListData(name: "LIST20", val: 20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("List View"),
      ),

      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          String listString = "${_myList[index].getName()}:${_myList[index].val}";
          return Container(
              child: ListTile(
                title: Text(listString),
                onTap: () {
                  _onTap(_myList[index]);
                },
              )
          );
        },
        itemCount: _myList.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'onPressed',
        child: Icon(Icons.backspace),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onPressed() {
    Navigator.pop(context); //元の画面に戻る
  }

  void _onTap(_MyListData mylist) async {
    bool res = await testDialog(context, mylist.name);  //同期でダイアログ表示
    print("Dialog result is $res");
  }

  Future<bool> testDialog(BuildContext context, String name) {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) => _buildTestDialog(context,name),
    );
  }

  Widget _buildTestDialog(BuildContext context, String name) {
    String title = "Test Dialog";
    String message = "This is the Test Dialog [$name]";

    List<Widget> actions = [
      FlatButton(
        child: Text("Cancel"),
        onPressed: () {
          Navigator.pop(context, false);
        },
      ),
      FlatButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context, true);
        },
      )
    ];

    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: actions,
    );
  }

}
